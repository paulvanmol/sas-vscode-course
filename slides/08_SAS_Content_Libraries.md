# Topic 08 — SAS Content & Libraries
## Slide Outline

**Timing:** 10 min slides + 10 min demo + 15 min practice  
**Goal:** Participants can browse SAS Content (Viya), navigate libraries, preview data in the table viewer, and download tables.

---

### Slide 1 — The SAS Panel

Click the **SAS icon** in the Activity Bar to open the SAS panel.

Two sections:
- **SAS Content** — server-side files (SAS Viya only)
- **Libraries** — SAS libraries and datasets (all connection types)

Both populate automatically when you have an active connection.

---

### Slide 2 — SAS Content (Viya Only)

The SAS Content panel mirrors your SAS Viya content repository — the same folders you see in SAS Studio's Explorer on Viya.

What you can do:
- Browse folders and files
- Open a file directly in the VS Code editor
- Run a SAS program from the server
- Upload local files to the server
- Download server files locally
- Create and delete folders

"Your Viya content files are accessible right here — no need to switch to a browser."

---

### Slide 3 — Libraries Panel

Shows all SAS libraries in your current session:

- Expand a library to see its datasets
- Each dataset shows name and type (DATA or VIEW)
- Right-click a dataset for options

Available for all connection types (Viya, Local, IOM, SSH).

---

### Slide 4 — The Table Viewer

Double-click any dataset → opens in the **Table Viewer**:

- Spreadsheet-like view of the data
- Sort by clicking column headers
- Filter rows using the filter bar
- Search with `Ctrl+F`
- Resize columns by dragging

Shows the first 100 rows by default. Use filters to narrow large tables.

---

### Slide 5 — Downloading Tables

Right-click a dataset → **Download**

Choose format:
- **CSV** — opens in Excel
- **XLSX** — Excel workbook
- **SAS7BDAT** — SAS dataset format

"Download a subset: run a DATA step with a WHERE clause first, then download the smaller dataset."

---

### Slide 6 — Drag and Drop

Drag items from the SAS panels into the editor:

- **Dataset from Libraries** → inserts `MYLIB.DATASETNAME` at cursor
- **File from SAS Content** → inserts the server path as a string

Reduces typing errors when referencing datasets.

---

### Slide 7 — Activity: Data Explorer

**Individual activity (3 minutes):**

With an active SAS connection:

1. Open the Libraries panel and expand **SASHELP**
2. Find the `CLASS` dataset
3. Open it in the table viewer
4. Sort by `Height` descending — who is tallest?
5. How many observations are in the dataset? (check the status bar of the table viewer)

*Quick debrief.*

*Transition to demo.*
