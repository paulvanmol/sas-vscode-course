# Practice 06 — Git Version Control
## Hands-On Exercise

**Estimated time:** 25 minutes  
**Connection required:** No (Git works without a SAS connection)  
**Objective:** Make commits, push to GitHub, view history, and create a branch.

---

## Exercise 6.1 — Your First Commit (8 min)

**Task A — Make a change:**
1. Open `programs/01_data_import.sas`
2. Add a header comment at the very top:
   ```sas
   /*=============================================================
    * Program:  01_data_import.sas
    * Purpose:  Import sales and customer data from CSV files
    * Author:   [Your Name]
    * Date:     [Today's Date]
    *=============================================================*/
   ```
3. Save the file (`Ctrl+S`)

**Task B — Stage the change:**
1. Open the Source Control panel (`Ctrl+Shift+G`)
2. You should see `01_data_import.sas` listed under **Changes**
3. Hover over the file and click the **+** icon to stage it
4. The file moves to **Staged Changes**

**Task C — Write a commit message:**
1. Click in the message box at the top of the Source Control panel
2. Type: `Add header comment to data import program`
3. Click **✓ Commit**

The file disappears from Changes — it is committed to your local repository.

> **Check:** Click the **...** menu → **View Git Log** (or use GitLens if installed) to see your commit.

---

## Exercise 6.2 — Make Two More Commits (5 min)

Repeat the commit process for two more changes:

**Commit 1:**
- Open `programs/02_data_exploration.sas`
- Add a comment explaining what the program does (2–3 lines)
- Stage and commit with message: `Add description comment to exploration program`

**Commit 2:**
- Open `README.md` in the root of the repository
- Add your name to the "Workshop Participants" section (or add that section if it does not exist)
- Stage and commit with message: `Add my name to workshop participants`

> **Question:** After three commits, what does the Source Control panel show?

---

## Exercise 6.3 — Push to GitHub (3 min)

Your commits are local. Push them to your GitHub fork:

1. In the Source Control panel, click **...** → **Push**
2. VS Code may ask you to authenticate with GitHub — follow the browser prompt
3. After pushing, the sync indicator in the Status Bar should show ↑0 (nothing left to push)

**Verify on GitHub:**
1. Open a browser and go to `https://github.com/<your-username>/sas-vscode-course`
2. Click on `programs/01_data_import.sas`
3. You should see your header comment at the top

---

## Exercise 6.4 — View File History (3 min)

1. In the Explorer, right-click `programs/01_data_import.sas`
2. Select **Open Timeline**
3. The Timeline panel shows the commits that touched this file
4. Click your commit — a diff view opens showing what changed
5. Green lines = added, red lines = removed

> **Question:** How many commits are in the history of this file? (Includes commits from the original repository before you forked it.)

---

## Exercise 6.5 — Compare with Last Commit (2 min)

1. Open `programs/01_data_import.sas`
2. Add another comment line anywhere in the file (do not save yet — or save and do not commit)
3. Open the Source Control panel — the file appears under Changes
4. Right-click the file → **Open Changes**
5. A side-by-side diff view opens — your new line is highlighted in green

Close the diff view without committing this change.

---

## Exercise 6.6 — Create a Branch (4 min)

**Task A — Create the branch:**
1. Click the branch name in the Status Bar (shows `main`)
2. Select **Create new branch...**
3. Type: `feature/add-summary-report`
4. Press Enter

The Status Bar now shows `feature/add-summary-report`.

**Task B — Make a change on the branch:**
1. Create a new file: `programs/summary_report.sas`
2. Add a simple PROC PRINT:
   ```sas
   /* Summary report - created on feature branch */
   proc print data=sashelp.class;
       title 'Class Dataset Summary';
   run;
   ```
3. Save, stage, and commit with message: `Add summary report program`

**Task C — Switch back to main:**
1. Click the branch name in the Status Bar
2. Select `main`
3. Open the Explorer — `programs/summary_report.sas` is gone!

> **Why?** The file exists on the `feature/add-summary-report` branch, not on `main`. Switch back to the feature branch to see it again.

---

## Exercise 6.7 — Review the `.gitignore` (2 min)

Open `.gitignore` in the root of the repository.

1. What file types are excluded?
2. Why are `.log` and `.lst` files excluded?
3. What would happen if you ran a SAS program that created a `.log` file — would it appear in the Source Control panel?

> **Test it:** If you have a SAS connection, run any program. Check the Source Control panel — does the log file appear?

---

## Bonus — Undo a Commit

If you made a commit with a mistake:

1. Source Control panel → **...** → **Undo Last Commit**
2. The commit is undone — the changes go back to Staged Changes
3. Fix the issue, then commit again

> **Note:** Only undo commits that have NOT been pushed to GitHub. Once pushed, use a new commit to fix the mistake.

---

## Summary

After this exercise you should be able to:
- Stage files and write meaningful commit messages
- Push commits to GitHub
- View file history and compare versions
- Create and switch branches
- Understand what `.gitignore` does

*When done, move on to Topic 07.*
