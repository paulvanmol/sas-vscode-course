# Topic 06 — Git Version Control
## Slide Outline

**Timing:** 20 min slides + 15 min demo + 25 min practice  
**Goal:** Participants can use Git from VS Code to stage, commit, push, and view history. They understand why version control matters for SAS development.

---

### Slide 1 — The Version Control Problem

"Show of hands: who has files named like this?"

```
analysis.sas
analysis_v2.sas
analysis_v2_FINAL.sas
analysis_v2_FINAL_USE_THIS.sas
analysis_v2_FINAL_USE_THIS_fixed.sas
analysis_FINAL_FINAL.sas
```

"Git replaces all of that with a proper history. One file, infinite versions, every change explained."

---

### Slide 2 — What Git Does

Git tracks every change to every file in your project:

- **Who** changed it
- **When** they changed it
- **What** they changed (exact lines added and removed)
- **Why** they changed it (the commit message you write)

You can go back to any point in history instantly.

---

### Slide 3 — The Git Workflow

```
Edit files  →  Stage changes  →  Commit  →  Push to GitHub
(working        (git add)        (git commit)  (git push)
 directory)
```

In VS Code, the **Source Control panel** (`Ctrl+Shift+G`) handles all of this visually — no command line needed.

---

### Slide 4 — The Source Control Panel

*Show annotated screenshot of the Source Control panel.*

Key areas:
- **Changes** — files you have modified
- **Staged Changes** — files ready to commit
- **Commit message box** — type your message here
- **✓ Commit button** — creates the commit
- **... menu** — Push, Pull, Branch operations

---

### Slide 5 — Making a Commit

Step by step:

1. Edit a file and save it
2. Open Source Control panel — the file appears under **Changes**
3. Click **+** next to the file to **stage** it
4. Type a commit message: `Add profit margin calculation to sales report`
5. Click **✓ Commit**

The file disappears from Changes — it is now in your local history.

---

### Slide 6 — Writing Good Commit Messages

Bad commit messages:
```
fix
update
changes
wip
asdf
```

Good commit messages:
```
Fix missing WHERE clause in quarterly sales query
Add PROC REPORT for regional summary with subtotals
Refactor macro to accept date range parameters
Remove hardcoded server path, use macro variable instead
```

"A good commit message completes the sentence: 'If applied, this commit will...'"

---

### Slide 7 — Pushing to GitHub

Your commits are **local** until you push:

- Source Control panel → **...** → **Push**
- Or click the sync icon in the Status Bar (shows ↑1 after a commit)

First push may ask you to authenticate with GitHub — follow the browser prompt.

"Push regularly. If your laptop dies, your pushed commits are safe on GitHub."

---

### Slide 8 — Viewing History

To see what changed in a file:

1. Right-click the file in Explorer → **Open Timeline**
2. The Timeline panel shows every commit that touched this file
3. Click any entry to see the diff (what changed)

To compare current file with last commit:
- Source Control panel → right-click a changed file → **Open Changes**

---

### Slide 9 — Branches

A branch is an independent line of development:

```
main:     A ── B ── C ──────────── F
                     \            /
feature:              D ── E ────
```

- Work on `feature` without touching `main`
- When done, merge back to `main`
- `main` always stays in a working state

Create a branch: click the branch name in the Status Bar → **Create new branch**

---

### Slide 10 — The `.gitignore` File

Some files should **not** be committed:

```gitignore
# SAS generated files
*.log
*.lst

# Large data files
data/*.csv
data/*.xlsx

# OS files
.DS_Store
Thumbs.db
```

The starter repository includes a `.gitignore` configured for SAS projects. Open it and review it.

"If a file is in `.gitignore`, Git pretends it does not exist. Your SAS logs will never accidentally end up in GitHub."

---

### Slide 11 — Activity: Commit Message Workshop

**Individual activity (3 minutes):**

Rewrite these bad commit messages as good ones:

1. `fix` → (the fix was: correcting a wrong date format in a PROC IMPORT)
2. `update report` → (the update was: adding a subtotal row to a PROC REPORT)
3. `changes` → (the change was: replacing a hardcoded library path with a macro variable)

*Share answers — discuss what makes a message useful.*

*Transition to demo.*
