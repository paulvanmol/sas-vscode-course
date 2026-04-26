/*=============================================================
 * Program:  utility_macros.sas
 * Purpose:  Reusable utility macros for the course exercises.
 *           Used in the AI-assisted coding practice (Topic 09).
 *=============================================================*/

%macro check_dataset(dsn=, required_vars=);
    /*
     * Checks whether a dataset exists and optionally verifies
     * that required variables are present.
     * Parameters:
     *   dsn           - fully qualified dataset name (lib.member)
     *   required_vars - space-separated list of variable names to check
     */
    %local dsid rc i varname found;

    %let dsid = %sysfunc(open(&dsn));

    %if &dsid = 0 %then %do;
        %put ERROR: [check_dataset] Dataset &dsn does not exist.;
        %return;
    %end;

    %put NOTE: [check_dataset] Dataset &dsn exists.;

    %if %length(&required_vars) > 0 %then %do;
        %let i = 1;
        %let varname = %scan(&required_vars, &i);

        %do %while (%length(&varname) > 0);
            %let found = %sysfunc(varnum(&dsid, &varname));
            %if &found = 0 %then %do;
                %put WARNING: [check_dataset] Variable &varname not found in &dsn;
            %end;
            %else %do;
                %put NOTE: [check_dataset] Variable &varname found in &dsn;
            %end;
            %let i = %eval(&i + 1);
            %let varname = %scan(&required_vars, &i);
        %end;
    %end;

    %let rc = %sysfunc(close(&dsid));
%mend check_dataset;


%macro summarize(dsn=, var=, class=, outds=work.summary);
    /*
     * Generates summary statistics for one or more numeric variables,
     * optionally grouped by a classification variable.
     * Parameters:
     *   dsn   - input dataset name
     *   var   - space-separated list of numeric variables to summarize
     *   class - (optional) grouping variable
     *   outds - output dataset name (default: work.summary)
     */
    proc means data=&dsn noprint;
        %if %length(&class) > 0 %then %do;
            class &class;
        %end;
        var &var;
        output out=&outds
            n=    / autoname
            mean= / autoname
            std=  / autoname
            min=  / autoname
            max=  / autoname;
    run;

    proc print data=&outds noobs;
        title "Summary: &var from &dsn";
        %if %length(&class) > 0 %then %do;
            title2 "Grouped by &class";
        %end;
    run;

    title;
%mend summarize;


%macro date_range_check(dsn=, date_var=, start_date=, end_date=);
    /*
     * Checks how many observations fall within a date range.
     * Parameters:
     *   dsn        - input dataset name
     *   date_var   - name of the SAS date variable to check
     *   start_date - start of range in SAS date value or date literal
     *   end_date   - end of range in SAS date value or date literal
     */
    proc sql noprint;
        select count(*) into :n_in_range
        from &dsn
        where &date_var between &start_date and &end_date;
    quit;

    %put NOTE: [date_range_check] &n_in_range observations found between &start_date and &end_date;
%mend date_range_check;
