/*=============================================================
 * Program:  04_with_errors.sas
 * Purpose:  This program contains intentional errors for the
 *           editor practice exercise (Topics 04 and 05).
 *
 *           Exercise: Find and fix all errors using:
 *           1. The Problems panel (static analysis — before running)
 *           2. The SAS log (after running)
 *
 *           There are FIVE errors in this program.
 *           Hint: they are marked with comments below.
 *
 * Inputs:   work.sales (created by 01_data_import.sas)
 *=============================================================*/

/* ---- Error 1: Missing semicolon after DATA statement ---- */
data work.step1
    set work.sales;
    /* Calculate revenue per unit */
    Revenue_Per_Unit = Total_Retail_Price / Quantity;
run;

/* ---- Error 2: Misspelled variable name ---- */
data work.step2;
    set work.sales;
    /* 'Prodcut_Line' is misspelled — should be 'Product_Line' */
    if Prodcut_Line = 'Children' then segment = 'Kids';
    else segment = 'Other';
run;

/* ---- Error 3: Wrong dataset name ---- */
proc means data=work.saless;
    var Quantity Profit;
    title 'Summary Statistics';
run;

/* ---- Error 4: Unclosed string literal ---- */
data work.step4;
    set work.sales;
    label Product_Line = 'Product Line Category
          Product_Group = 'Product Group Name';
run;

/* ---- Error 5: MERGE without BY statement ---- */
data work.step5;
    merge work.sales work.step1;
run;

title;
