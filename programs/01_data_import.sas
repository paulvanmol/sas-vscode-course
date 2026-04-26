/*=============================================================
 * Program:  01_data_import.sas
 * Purpose:  Import the Orion Star sales and customer datasets
 *           from CSV files into SAS datasets for analysis.
 *
 * Source:   SAS Viya Example Data Sets
 *           https://support.sas.com/documentation/onlinedoc/viya/examples.htm
 *           - orsales.csv  (renamed to sales.csv)
 *           - customer.csv
 *
 * Inputs:   data/sales.csv    (912 rows)
 *           data/customer.csv (5637 rows)
 *
 * Outputs:  work.sales
 *           work.customer
 *
 * Notes:    Adjust the DATAFILE path for your connection type:
 *           - Viya / SSH : use the server-side path to the data/ folder
 *           - Local SAS  : use the full local path, e.g.
 *                          C:\Projects\sas-vscode-course\data\sales.csv
 *=============================================================*/

/* ---- Macro variable for the data folder path ---- */
/* Change this one line to match your environment    */
%let data_path = ./data;   /* relative path works for local SAS */

/* ---- Import Orion Star sales data (orsales.csv) ---- */
proc import
    datafile="&data_path./sales.csv"
    out=work.sales
    dbms=csv
    replace;
    getnames=yes;
run;

/* ---- Import customer data ---- */
proc import
    datafile="&data_path./customer.csv"
    out=work.customer
    dbms=csv
    replace;
    getnames=yes;
run;

/* ---- Verify: check structure and row counts ---- */
proc contents data=work.sales varnum;
    title 'Structure of WORK.SALES (orsales)';
run;

proc contents data=work.customer varnum;
    title 'Structure of WORK.CUSTOMER';
run;

/* ---- Quick preview ---- */
proc print data=work.sales(obs=5);
    title 'First 5 rows of WORK.SALES';
run;

proc print data=work.customer(obs=5);
    var ID Name Activity Country Gender;
    title 'First 5 rows of WORK.CUSTOMER (selected columns)';
run;

title;
