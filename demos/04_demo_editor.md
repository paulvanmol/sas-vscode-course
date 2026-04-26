# Demo 04 — Writing SAS Code
## Instructor Demo Script

**Duration:** 15 minutes  
**Connection required:** No  
**Files used:** `programs/02_data_exploration.sas`, new file

---

## Setup Before Demo

- `programs/02_data_exploration.sas` open in the editor
- A new empty `.sas` file ready to create

---

## Demo Steps

### 1. Syntax Highlighting (2 min)

- Open `programs/02_data_exploration.sas`
- Point to the colors: "Blue for keywords, green for strings, grey for comments"
- Deliberately introduce a missing quote: change `'Summary Statistics'` to `'Summary Statistics`
- "Watch what happens to the colors — everything after the unclosed quote turns string-colored"
- "That color change is your first warning of a syntax error"
- Fix the quote

### 2. Code Completion (3 min)

- Open a new file, save as `programs/demo_editor.sas`
- Type `proc ` — show the suggestion list
- Type `re` — filter to REPORT, REG, etc.
- Select REPORT, press Tab
- On the next line, type `data=` — show dataset suggestions (if connected)
- Type `proc means data=sashelp.class;` then on the next line type `var `
- Show that it suggests variable names from the dataset (if connected)

### 3. Hover Help (2 min)

- Hover over `PROC MEANS` — show the tooltip
- Hover over `PROC REPORT` — show the tooltip
- "This is the documentation, built into the extension. No browser needed."

### 4. Code Folding (2 min)

- Open `programs/02_data_exploration.sas`
- Click the fold arrow next to the first PROC step
- "The whole step collapses to one line"
- Press `Ctrl+K Ctrl+0` — fold everything
- "Now I can see the structure of the whole program at a glance"
- Press `Ctrl+K Ctrl+J` — unfold everything

### 5. Snippets (2 min)

- In `programs/demo_editor.sas`, type `ds` and press Tab
- "A DATA step template with placeholders"
- Tab through the placeholders, filling them in
- "Snippets are faster than typing from scratch and ensure you do not forget the RUN statement"

### 6. Problems Panel (2 min)

- Open `programs/04_with_errors.sas`
- Open the Problems panel: `Ctrl+Shift+M`
- "The extension found these issues without running the code"
- Click each problem — VS Code jumps to the line
- "Notice it caught the missing semicolon and the unclosed string, but not the misspelled variable name — that requires running the code"

### 7. Format Code (2 min)

- In `programs/demo_editor.sas`, add some badly indented code
- Press `Shift+Alt+F`
- "One shortcut, consistent formatting"

---

## Transition

"Now practice these features yourself. Open `hands-on/04_editor_practice.md`."
