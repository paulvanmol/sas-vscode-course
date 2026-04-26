/*=============================================================
 * Program:  03_reporting.sas
 * Purpose:  Generate summary reports of Orion Star sales
 *           performance by product line and year.
 *
 * Dataset:  orsales.csv — Orion Star retail sales
 *           Columns: Year, Quarter, Product_Line, Product_Category,
 *                    Product_Group, Quantity, Profit, Total_Retail_Price
 *
 * Inputs:   work.sales (created by 01_data_import.sas)
 * Outputs:  Printed reports
 *=============================================================*/

/* ---- Derive margin percentage ---- */
data work.sales_enriched;
    set work.sales;
    /* Profit margin as a percentage of retail price */
    if Total_Retail_Price > 0 then
        Margin_Pct = (Profit / Total_Retail_Price) * 100;
    else
        Margin_Pct = .;
    format Profit Total_Retail_Price dollar14.2
           Margin_Pct 6.1;
    label Margin_Pct = 'Profit Margin %';
run;

/* ---- Aggregate by product line ---- */
proc means data=work.sales_enriched noprint;
    class Product_Line;
    var Quantity Profit Total_Retail_Price;
    output out=work.line_summary
        sum(Quantity)=Total_Qty
        sum(Profit)=Total_Profit
        sum(Total_Retail_Price)=Total_Revenue
        n(Profit)=Num_Groups;
run;

data work.line_summary;
    set work.line_summary;
    where _type_ = 1;
    Margin_Pct = (Total_Profit / Total_Revenue) * 100;
    format Total_Profit Total_Revenue dollar14.2
           Total_Qty comma10.
           Margin_Pct 6.1;
run;

/* ---- Report: Sales by Product Line ---- */
proc report data=work.line_summary nowd;
    column Product_Line Num_Groups Total_Qty Total_Revenue Total_Profit Margin_Pct;

    define Product_Line  / display 'Product Line';
    define Num_Groups    / display 'Product Groups' format=comma6.;
    define Total_Qty     / display 'Total Quantity';
    define Total_Revenue / display 'Total Revenue';
    define Total_Profit  / display 'Total Profit';
    define Margin_Pct    / display 'Margin %';

    title 'Orion Star — Sales Performance by Product Line';
    footnote 'Source: orsales.csv — support.sas.com/documentation/onlinedoc/viya/examples.htm';
run;

/* ---- Trend: annual profit by product line ---- */
proc means data=work.sales_enriched noprint;
    class Year Product_Line;
    var Profit;
    output out=work.annual_trend sum=Annual_Profit;
run;

proc report data=work.annual_trend(where=(_type_=3)) nowd;
    column Product_Line Year Annual_Profit;

    define Product_Line  / group  'Product Line';
    define Year          / group  'Year';
    define Annual_Profit / sum    'Annual Profit' format=dollar14.2;

    break after Product_Line / summarize;

    title 'Orion Star — Annual Profit Trend by Product Line';
    footnote 'Source: orsales.csv';
run;

title;
footnote;
