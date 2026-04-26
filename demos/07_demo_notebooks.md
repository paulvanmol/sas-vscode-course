# Demo 07 — SAS Notebooks
## Instructor Demo Script

**Duration:** 15 minutes  
**Connection required:** Yes  
**Files used:** New notebook created during demo

---

## Setup Before Demo

- Active SAS connection
- `data/` folder accessible from the SAS server

---

## Demo Steps

### 1. Create a Notebook (1 min)

- Press `Ctrl+Shift+P` → `SAS: New SAS Notebook`
- Save as `notebooks/demo_notebook.sasnb`
- "A notebook opens — it looks different from a .sas file"

### 2. Add a Markdown Cell (2 min)

- Click the language selector on the first cell → select **Markdown**
- Type:
  ```markdown
  # Sales Analysis Demo
  This notebook demonstrates SAS Notebooks in VS Code.
  ```
- Press `Ctrl+Enter` to render
- "This is formatted text — not a comment, not code. It renders like a document."

### 3. Add a SAS Cell (3 min)

- Click **+ Code** below the Markdown cell
- Language should be SAS (check the selector)
- "First we need to import the data — let me add that cell"
- Type:
  ```sas
  %let data_path = ./data;   /* adjust for your environment */
  proc import datafile="&data_path./sales.csv"
      out=work.sales dbms=csv replace;
      getnames=yes;
  run;
  ```
- Click ▶ to run — "912 rows imported"
- Add another SAS cell below:
  ```sas
  proc print data=work.sales(obs=5);
      title 'First 5 rows — Orion Star Sales';
  run;
  ```
- Click ▶ to run
- "The output appears right here, below the cell — not in a separate panel"
- Point to the columns: Year, Quarter, Product_Line, Product_Category, Product_Group, Quantity, Profit, Total_Retail_Price

### 4. Add a SQL Cell (3 min)

- Add another code cell
- Change language to **SQL**
- Type:
  ```sql
  SELECT
      Product_Line,
      SUM(Profit)             AS total_profit,
      SUM(Total_Retail_Price) AS total_revenue
  FROM work.sales
  GROUP BY Product_Line
  ORDER BY total_profit DESC;
  ```
- Click ▶ to run
- "No PROC SQL wrapper needed — just write the SELECT"
- Show the inline results

### 5. Add Another Markdown Cell (1 min)

- Add a Markdown cell between the SAS and SQL cells
- Type:
  ```markdown
  ## Aggregation by Gender
  The following SQL query groups students by gender.
  ```
- Render it
- "The notebook now tells a story: title, data preview, explanation, aggregation"

### 6. Run All Cells (1 min)

- Click **Run All** in the toolbar
- "All cells run in order — the session is shared between cells"

### 7. Show the Outline (1 min)

- "Notice the Markdown headings create structure in the notebook"
- Scroll through the notebook to show the flow

### 8. Clear Output and Save (1 min)

- Click **Clear All Outputs**
- Save the file
- "I will commit this without output — keeps the repository clean"

### 9. Show the .sasnb File (2 min)

- Open the Source Control panel — the notebook file appears
- "It is just a JSON file — Git can track it like any other file"
- Stage and commit: `Add demo notebook`

---

## Transition

"Now build your own analysis notebook. Open `hands-on/07_notebooks_practice.md`."
