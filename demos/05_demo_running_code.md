# Demo 05 — Running SAS Code
## Instructor Demo Script

**Duration:** 15 minutes  
**Connection required:** Yes  
**Files used:** `programs/01_data_import.sas`, `programs/02_data_exploration.sas`

---

## Setup Before Demo

- Active SAS connection (verify before starting)
- `programs/01_data_import.sas` open
- Output and Results panels visible

---

## Demo Steps

### 1. Run the Entire File (3 min)

- Open `programs/01_data_import.sas`
- Point to the `%let data_path` line at the top: "This is the one line you change for your environment"
- "I will run this entire program with F8"
- Press `F8`
- Point to the spinning indicator in the Status Bar: "Job is running"
- When done, point to the Output panel: "This is the SAS log"
- Scroll through the log: "NOTEs in blue, WARNINGs in orange, ERRORs in red"
- Find the NOTE showing observation counts: "912 rows for sales, 5637 for customer — the import worked"

### 2. Read the Log (3 min)

- Point to a NOTE: "Informational — everything is fine"
- If there are WARNINGs, point to one: "Something unexpected happened but SAS continued"
- "Always read the log. A program that runs without errors can still produce wrong results."
- Show the observation count NOTE: "This is the most important NOTE in a DATA step"

### 3. View Results (2 min)

- Click the Results tab (next to Output)
- "The PROC PRINT output appears here as HTML"
- Scroll through the results
- "This is the same output you would see in SAS Studio or SAS Enterprise Guide"

### 4. Run Selected Code (3 min)

- Open `programs/02_data_exploration.sas`
- "I do not want to run the whole file — just the PROC MEANS step"
- Select from `proc means` to the `run;` statement
- Press `F8`
- "Only the selected code ran — notice the log shows just that one step"
- "This is how you develop iteratively — run one step at a time"

### 5. Cancel a Job (2 min)

- Write a simple infinite loop or a very slow query:
  ```sas
  data work.big;
      do i = 1 to 100000000;
          x = i * 2;
          output;
      end;
  run;
  ```
- Press `F8` to start it
- After 3 seconds, click the Stop button (■)
- "The job is cancelled. The log shows it was interrupted."

### 6. File Path Demo (2 min)

- Show the PROC IMPORT in `01_data_import.sas`
- "This path uses `&_SASWORKDIR` — a macro variable that points to the SAS work directory on the server"
- "If you hardcode a local path like `C:\Users\me\data\`, it will fail on a remote server"
- "Always use server-side paths or macro variables for file references"

---

## Transition

"Now run the programs yourself. Open `hands-on/05_running_code_practice.md`."
