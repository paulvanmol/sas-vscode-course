# Practice 04 — Writing SAS Code
## Hands-On Exercise

**Estimated time:** 20 minutes  
**Connection required:** No (static analysis works without a connection)  
**Objective:** Use the editor's SAS-specific features to write and improve code.

---

## Exercise 4.1 — Code Completion (5 min)

Create a new file: `Ctrl+N`, save as `programs/editor_practice.sas`

**Task A — Procedure completion:**
1. Type `proc ` (with a space after proc)
2. Wait for the suggestion list — how many procedures appear?
3. Type `me` — the list filters. Select `MEANS` and press Tab
4. On the next line, type `data=` — does it suggest dataset names?

**Task B — Function completion:**
1. On a new line, type `x = substr(`
2. Notice the function signature tooltip that appears
3. Press Escape to dismiss

**Task C — Macro completion:**
1. Type `%let myvar = `
2. On the next line, type `%put &myvar`
3. Notice the macro variable reference is recognized

> **Question:** Which completion feature do you think will save you the most time?

---

## Exercise 4.2 — Hover Help (3 min)

Open `programs/02_data_exploration.sas`

Hover your mouse over each of these and read the tooltip:
1. `PROC MEANS` — what does the tooltip say about this procedure?
2. `PROC FREQ` — what is the purpose of this procedure?
3. A SAS function in the file (if present) — what does the tooltip show?

> **Note:** Hover help works without a SAS connection — the documentation is built into the extension.

---

## Exercise 4.3 — Code Folding (3 min)

Open `programs/02_data_exploration.sas`

1. Find the fold arrows (▼) in the gutter (left of line numbers)
2. Click the arrow next to a `PROC` step to collapse it
3. Click ▶ to expand it again
4. Use `Ctrl+K Ctrl+0` to fold **all** blocks
5. Use `Ctrl+K Ctrl+J` to unfold all

> **Question:** In a 300-line program with 8 PROC steps, how would you use folding to focus on one step at a time?

---

## Exercise 4.4 — Snippets (4 min)

In `programs/editor_practice.sas`:

**Task A:**
1. On a new line, type `ds` and press `Tab`
2. A DATA step template appears with placeholders
3. The cursor is on the first placeholder — type `work.my_data`
4. Press `Tab` to move to the next placeholder — type `sashelp.class`
5. Press `Tab` again — fill in the remaining placeholders

**Task B:**
1. On a new line, type `macro` and press `Tab`
2. Fill in the macro name and parameters
3. Add a `%put` statement inside the macro body

**Task C:**
1. Inside a DATA step, type `do` and press `Tab`
2. Fill in the loop variable and range

---

## Exercise 4.5 — The Problems Panel (5 min)

Open `programs/04_with_errors.sas`

This file contains intentional errors.

1. Open the Problems panel: `Ctrl+Shift+M`
2. How many problems are listed?
3. Click each problem — VS Code jumps to the line with the issue
4. Hover over the red underline in the editor — what does the tooltip say?

**Fix the errors:**
- Fix each error the Problems panel identifies
- After each fix, check if the problem disappears from the panel

> **Important:** The Problems panel catches *static* errors (syntax issues it can detect without running). Some errors only appear in the SAS log after running. How many errors did you find that the Problems panel did NOT catch?

---

## Exercise 4.6 — Format Code (2 min)

1. Open `programs/editor_practice.sas`
2. Deliberately mess up the indentation — add random spaces, remove indentation
3. Press `Shift+Alt+F` (Windows/Linux) or `Shift+Option+F` (macOS)
4. The code is reformatted automatically

Enable format on save:
1. Open Settings: `Ctrl+,`
2. Search `format on save`
3. Check the box

Now save the file — it formats automatically.

---

## Bonus — Multi-Cursor Editing

In `programs/editor_practice.sas`:

1. Find a variable name that appears multiple times in a DATA step
2. Click on one occurrence
3. Press `Ctrl+D` to select the next occurrence
4. Keep pressing `Ctrl+D` to select all occurrences
5. Type the new name — all occurrences change simultaneously

> **When is this useful?** Renaming a variable in a DATA step without using Find & Replace.

---

## Summary

After this exercise you should be able to:
- Use code completion to write SAS code faster
- Use hover help to check syntax without a browser
- Use code folding to navigate large programs
- Expand snippets for common SAS patterns
- Use the Problems panel to find syntax errors before running
- Format code automatically

*When done, move on to Topic 05.*
