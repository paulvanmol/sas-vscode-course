# Practice 08 — SAS Content & Libraries
## Hands-On Exercise

**Estimated time:** 15 minutes  
**Connection required:** Yes  
**Objective:** Browse SAS libraries, preview data, and use the table viewer.

---

## Exercise 8.1 — Explore the Libraries Panel (5 min)

1. Click the SAS icon in the Activity Bar
2. Expand the **Libraries** panel
3. Expand the **SASHELP** library

Answer these questions:
- How many datasets are in SASHELP? (scroll through the list)
- Find the `CARS` dataset — what type is it (DATA or VIEW)?
- Find the `PRICEDATA` dataset — does it exist?

---

## Exercise 8.2 — Use the Table Viewer (5 min)

1. Double-click `SASHELP.CARS` to open it in the table viewer
2. Explore the data:
   - How many columns are there?
   - What is the most expensive car? (sort by MSRP descending)
   - How many cars have more than 300 horsepower? (use the filter)
3. Click a column header to sort — click again to reverse the sort

> **Question:** What is the make and model of the car with the highest MSRP?

---

## Exercise 8.3 — Download a Table (3 min)

1. Right-click `SASHELP.CLASS` in the Libraries panel
2. Select **Download**
3. Choose **CSV** format
4. Save it to your local `output/` folder
5. Open the file in Excel or a text editor to verify it downloaded correctly

> **Note:** The `output/` folder is in `.gitignore` — downloaded files will not be committed to Git.

---

## Exercise 8.4 — Drag a Dataset Name (2 min)

1. Open `programs/editor_practice.sas` (or any `.sas` file)
2. Place your cursor on a new line
3. In the Libraries panel, find `SASHELP.CARS`
4. Drag it into the editor
5. It inserts `SASHELP.CARS` at the cursor position

> **When is this useful?** When you cannot remember the exact library and dataset name — drag it instead of typing.

---

## Bonus — SAS Content (Viya Only)

If you are connected to SAS Viya:

1. Expand the **SAS Content** panel
2. Navigate to **My Folder**
3. Right-click → **New Folder** → name it `workshop`
4. Right-click the `workshop` folder → **Upload**
5. Upload `programs/01_data_import.sas`
6. Double-click the uploaded file — it opens in the editor
7. Run it with `F8` — it runs on the Viya server

> **Question:** What is the difference between running a file from your local workspace vs. running a file from SAS Content?

---

## Summary

After this exercise you should be able to:
- Browse SAS libraries and datasets in the Libraries panel
- Open datasets in the table viewer and sort/filter data
- Download tables to your local machine
- Drag dataset names into your code

*When done, move on to Topic 09.*
