# Practice 05 — Running SAS Code
## Hands-On Exercise

**Estimated time:** 25 minutes  
**Connection required:** Yes  
**Objective:** Run SAS programs, read the log, interpret results, and fix errors.

---

## Exercise 5.1 — Run a Complete Program (5 min)

1. Make sure your SAS connection is active (check the Status Bar)
2. Open `programs/01_data_import.sas`
3. Review the code — it imports `sales.csv` (orsales) and `customer.csv`
4. Update the `%let data_path` line if needed for your connection type:
   - **Local SAS:** full path to the `data/` folder, e.g. `C:\Projects\sas-vscode-course\data`
   - **Remote SSH/Viya:** server-side path where the data folder is accessible
5. Press `F8` to run the entire program
6. Open the Output panel and read the log

Answer these questions from the log:
- How many observations were imported into `work.sales`? (should be 912)
- How many observations were imported into `work.customer`? (should be 5,637)
- Were there any WARNINGs? If so, what were they?
- Were there any ERRORs?

---

## Exercise 5.2 — Run Selected Code (5 min)

Open `programs/02_data_exploration.sas`

**Task A — Run just one PROC step:**
1. Find the `PROC MEANS` step (starts with `proc means`, ends with `run;`)
2. Select those lines only
3. Press `F8`
4. Check the Output panel — only the PROC MEANS log appears

**Task B — Run just the PROC FREQ step:**
1. Select the `PROC FREQ` step for region
2. Press `F8`
3. Check the Results panel — the frequency table appears

> **Question:** What is the advantage of running selected code during development?

---

## Exercise 5.3 — Read and Interpret the Log (5 min)

Run the complete `programs/02_data_exploration.sas` program.

In the log, find:
1. The NOTE that shows how many observations `work.sales` has
2. Any WARNING messages — what do they say?
3. The total process time for the PROC MEANS step
4. The NOTE that confirms PROC FREQ completed

Now look at the Results panel:
1. How many years of data are in the dataset? (1999–?)
2. Which product line has the most rows?

---

## Exercise 5.4 — Fix Errors (8 min)

Open `programs/04_with_errors.sas`

This program has 5 intentional errors.

**Step 1 — Static analysis:**
1. Open the Problems panel (`Ctrl+Shift+M`)
2. How many problems does it show?
3. What are they?

**Step 2 — Run the program:**
1. Press `F8`
2. Read the log carefully
3. How many errors appear in the log?
4. Are they the same errors the Problems panel found, or different ones?

**Step 3 — Fix the errors:**
Fix each error one at a time. After each fix, run the program again to see if it progresses further.

> **Hint:** The errors are:
> 1. A missing semicolon
> 2. A misspelled variable name
> 3. A wrong dataset name
> 4. An unclosed string literal
> 5. A MERGE without a BY statement

> **Goal:** Get the program to run with no ERRORs (WARNINGs are acceptable).

---

## Exercise 5.5 — Autoexec (2 min)

1. Open VS Code Settings: `Ctrl+,`
2. Search for `SAS autoexec`
3. Click **Edit in settings.json**
4. Add this autoexec statement:
   ```json
   "SAS.session.autoExec": [
       { "line": "options mprint;" }
   ]
   ```
5. Run any SAS program
6. Check the log — do you see macro expansion output?

> **Note:** Remove or comment out the autoexec after this exercise if you do not want `MPRINT` output in every run.

---

## Summary

After this exercise you should be able to:
- Run entire programs and selected code with F8
- Read the SAS log and identify NOTEs, WARNINGs, and ERRORs
- Distinguish between static analysis errors and runtime errors
- Fix common SAS errors

*When done, move on to Topic 06.*
