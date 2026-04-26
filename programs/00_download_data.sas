/*=============================================================
 * Program:  00_download_data.sas
 * Purpose:  Download the course data files from the SAS Viya
 *           example datasets page using PROC HTTP.
 *
 *           Use this program if the data/ folder is empty or
 *           if you prefer not to commit the CSV files to Git.
 *
 * Source:   https://support.sas.com/documentation/onlinedoc/viya/examples.htm
 *
 * Downloads:
 *   - orsales.csv  → saved as data/sales.csv
 *   - customer.csv → saved as data/customer.csv
 *
 * Notes:    - Requires internet access from the SAS server
 *           - Adjust OUT_PATH to match your environment
 *           - For SAS Viya: use a server-side path
 *           - For local SAS: use a local path
 *=============================================================*/

/* ---- Set the output path for downloaded files ---- */
/* Change this to match your environment              */
%let out_path = ./data;   /* relative path — works for local SAS */

/* ---- Base URL for SAS Viya example datasets ---- */
%let base_url = https://support.sas.com/documentation/onlinedoc/viya/exampledatasets;

/* ---- Download orsales.csv → sales.csv ---- */
proc http
    url     = "&base_url./orsales.csv"
    method  = "GET"
    out     = "&out_path./sales.csv";
run;

%if &SYS_PROCHTTP_STATUS_CODE = 200 %then %do;
    %put NOTE: orsales.csv downloaded successfully to &out_path./sales.csv;
%end;
%else %do;
    %put ERROR: Download failed. HTTP status: &SYS_PROCHTTP_STATUS_CODE;
    %put ERROR: Check your internet connection and the URL.;
%end;

/* ---- Download customer.csv ---- */
proc http
    url     = "&base_url./customer.csv"
    method  = "GET"
    out     = "&out_path./customer.csv";
run;

%if &SYS_PROCHTTP_STATUS_CODE = 200 %then %do;
    %put NOTE: customer.csv downloaded successfully to &out_path./customer.csv;
%end;
%else %do;
    %put ERROR: Download failed. HTTP status: &SYS_PROCHTTP_STATUS_CODE;
    %put ERROR: Check your internet connection and the URL.;
%end;

/* ---- Verify the downloads ---- */
%macro check_file(path=);
    %if %sysfunc(fileexist(&path)) %then
        %put NOTE: File exists: &path;
    %else
        %put WARNING: File NOT found: &path;
%mend check_file;

%check_file(path=&out_path./sales.csv)
%check_file(path=&out_path./customer.csv)

%put NOTE: Data download complete. Run 01_data_import.sas to load the data.;
