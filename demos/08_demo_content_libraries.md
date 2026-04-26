# Demo 08 — SAS Content & Libraries
## Instructor Demo Script

**Duration:** 10 minutes  
**Connection required:** Yes  
**Files used:** SASHELP library, SAS Content (Viya only)

---

## Demo Steps

### 1. Open the SAS Panel (1 min)

- Click the SAS icon in the Activity Bar
- "Two sections: SAS Content (Viya only) and Libraries (all connection types)"

### 2. Browse Libraries (2 min)

- Expand the Libraries panel
- Expand **SASHELP** — show the list of datasets
- "These are the same libraries you see in SAS Studio or SAS Enterprise Guide"
- Expand **WORK** — show any datasets created in this session

### 3. Open the Table Viewer (2 min)

- Double-click `SASHELP.CLASS`
- "A spreadsheet-like view opens"
- Click a column header to sort
- "Sort by Height descending — who is tallest?"
- Show the filter bar

### 4. Download a Table (1 min)

- Right-click `SASHELP.CLASS` → **Download**
- Select CSV
- Choose a location
- "The file downloads to your local machine — open it in Excel"

### 5. Drag a Dataset Name (1 min)

- Open `programs/demo_editor.sas`
- Drag `SASHELP.CLASS` from the Libraries panel into the editor
- "It inserts the fully qualified name — no typing, no typos"

### 6. SAS Content Panel (Viya only) (3 min)

*Skip if not on Viya.*

- Expand the SAS Content panel
- Navigate to **My Folder**
- "These are the same files you see in SAS Studio's Explorer on Viya — you can work with them directly from VS Code without switching to a browser"
- Right-click a folder → show the options: New Folder, Upload, etc.
- Open a `.sas` file from SAS Content — it opens in the editor
- "You can edit and run server-side files directly from VS Code"

---

## Transition

"Now explore the libraries yourself. Open `hands-on/08_content_libraries_practice.md`."
