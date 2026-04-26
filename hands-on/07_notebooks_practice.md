# Practice 07 — SAS Notebooks
## Hands-On Exercise

**Estimated time:** 30 minutes  
**Connection required:** Yes  
**Objective:** Create a SAS Notebook that combines SAS code, SQL, and Markdown to tell the story of a data analysis.

---

## Exercise 7.1 — Create a Notebook (2 min)

1. Press `Ctrl+Shift+P` → `SAS: New SAS Notebook`
2. Save it as `notebooks/sales_analysis.sasnb`
3. The notebook opens with one empty cell

---

## Exercise 7.2 — Add a Title (Markdown) (2 min)

1. Click the language selector on the first cell (top right of the cell)
2. Select **Markdown**
3. Type:
   ```markdown
   # Sales Data Analysis
   
   **Author:** [Your Name]  
   **Date:** [Today's Date]
   
   This notebook imports, explores, and summarizes the course sales dataset.
   We will use SAS for data preparation and SQL for aggregation.
   ```
4. Press `Ctrl+Enter` to render the Markdown

---

## Exercise 7.3 — Import Data (SAS cell) (5 min)

1. Click **+ Code** below the Markdown cell
2. Make sure the language is **SAS**
3. Write a PROC IMPORT to read the sales data:
   ```sas
   /* Import Orion Star sales data */
   %let data_path = ./data;   /* adjust for your connection type */

   proc import
       datafile="&data_path./sales.csv"
       out=work.sales
       dbms=csv
       replace;
       getnames=yes;
   run;
   ```
   > **Note:** Adjust `data_path` for your connection type:
   > - **Local SAS:** full path to the `data/` folder, e.g. `C:\Projects\sas-vscode-course\data`
   > - **Remote SSH/Viya:** server-side path to the data folder

4. Click ▶ to run the cell
5. Check the output below the cell — how many observations were imported? (expect 912)

---

## Exercise 7.4 — Add a Section Header (Markdown) (1 min)

Add a new Markdown cell:
```markdown
## Step 1: Explore the Data

Before analyzing, we check the structure and basic statistics of the dataset.
```

---

## Exercise 7.5 — Explore the Data (SAS cell) (5 min)

Add a SAS cell and write:
```sas
/* Check the structure */
proc contents data=work.sales varnum;
run;
```

Run the cell. Then add another SAS cell:
```sas
/* Summary statistics */
proc means data=work.sales n mean min max;
    var Quantity Profit Total_Retail_Price;
run;
```

Run this cell too.

> **Question:** What are the column names in the dataset? What are the minimum and maximum values for `Profit`?

---

## Exercise 7.6 — Add Analysis Section (Markdown + SQL) (8 min)

Add a Markdown cell:
```markdown
## Step 2: Sales by Product Line

We aggregate total profit and revenue by product line to identify
the strongest performing categories.
```

Add a **SQL** cell (change the language selector to SQL):
```sql
SELECT
    Product_Line,
    COUNT(*)                                         AS num_groups,
    SUM(Quantity)                                    AS total_qty,
    SUM(Profit)                                      AS total_profit,
    SUM(Total_Retail_Price)                          AS total_revenue,
    ROUND(SUM(Profit)/SUM(Total_Retail_Price)*100,1) AS margin_pct
FROM work.sales
GROUP BY Product_Line
ORDER BY total_profit DESC;
```

Run the cell. Review the results inline.

> **Question:** Which product line has the highest total profit? Which has the highest margin percentage?

---

## Exercise 7.7 — Add a Findings Section (Markdown) (3 min)

Add a Markdown cell at the bottom. Fill in your actual findings from the analysis:

```markdown
## Findings

Based on the analysis:

1. **[Product Line]** has the highest total profit at **[amount]**
2. **[Product Line]** has the highest profit margin at **[%]**
3. The dataset covers **[N]** years (1999–[year]) across **[N]** product lines

## Next Steps

- Analyse profit trends by quarter within each product line
- Join with customer data to understand which customer segments buy which products
- Investigate product groups with the lowest margin
```

Replace the placeholders with the actual values from your analysis.

---

## Exercise 7.8 — Run All Cells (2 min)

1. Click **Run All** in the notebook toolbar
2. All cells run in order from top to bottom
3. Verify that all outputs are correct

---

## Exercise 7.9 — Commit the Notebook (2 min)

1. Open the Source Control panel
2. Stage `notebooks/sales_analysis.sasnb`
3. Commit with message: `Add sales analysis notebook`
4. Push to GitHub

**Optional — Clear output before committing:**
- Click **Clear All Outputs** in the notebook toolbar
- Commit the cleared version: `Add sales analysis notebook (output cleared)`

> **Discussion:** What are the pros and cons of committing with vs. without output?

---

## Bonus — Add a Python Cell (Viya only)

If you are connected to SAS Viya:

1. Add a new cell and change the language to **Python**
2. Write:
   ```python
   import pandas as pd
   
   # Access the SAS dataset as a pandas DataFrame
   # (requires SAS Viya with Python integration)
   print("Python is running in a SAS Notebook!")
   ```
3. Run the cell

---

## Summary

After this exercise you should be able to:
- Create a SAS Notebook with multiple cell types
- Mix SAS, SQL, and Markdown in a single document
- Run cells individually and all at once
- Commit a notebook to Git

*When done, move on to Topic 08.*
