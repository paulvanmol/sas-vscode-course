/*=============================================================
 * Program:  02_data_exploration.sas
 * Purpose:  Explore the Orion Star sales dataset with summary
 *           statistics, frequency tables, and data quality checks.
 *
 * Dataset:  orsales.csv — Orion Star retail sales by product group
 *           Columns: Year, Quarter, Product_Line, Product_Category,
 *                    Product_Group, Quantity, Profit, Total_Retail_Price
 *
 * Inputs:   work.sales (created by 01_data_import.sas)
 * Outputs:  Printed reports only
 *=============================================================*/

/* ---- Check dataset structure ---- */
proc contents data=work.sales varnum;
    title 'Structure of WORK.SALES';
run;

/* ---- Summary statistics for numeric variables ---- */
proc means data=work.sales n nmiss mean std min max;
    var Quantity Profit Total_Retail_Price;
    title 'Summary Statistics: Sales Metrics';
run;

/* ---- Sales by year ---- */
proc freq data=work.sales;
    tables Year / nocum;
    title 'Number of Product Groups Reported per Year';
run;

/* ---- Sales by product line ---- */
proc freq data=work.sales;
    tables Product_Line / nocum;
    title 'Rows by Product Line';
run;

/* ---- Cross-tabulation: year by product line ---- */
proc freq data=work.sales;
    tables Year * Product_Line / norow nocol nopercent;
    title 'Year by Product Line';
run;

/* ---- Check for missing values ---- */
proc means data=work.sales nmiss;
    title 'Missing Value Check — WORK.SALES';
run;

/* ---- Top 10 product groups by total profit ---- */
proc means data=work.sales sum noprint;
    class Product_Group;
    var Profit;
    output out=work.profit_by_group sum=Total_Profit;
run;

proc sort data=work.profit_by_group(where=(_type_=1));
    by descending Total_Profit;
run;

proc print data=work.profit_by_group(obs=10) noobs;
    var Product_Group Total_Profit;
    format Total_Profit dollar14.2;
    title 'Top 10 Product Groups by Total Profit';
run;

title;
