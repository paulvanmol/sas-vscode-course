# Demo 06 — Git Version Control
## Instructor Demo Script

**Duration:** 15 minutes  
**Connection required:** No  
**Files used:** Any file in the repository

---

## Setup Before Demo

- The course repository open in VS Code
- Source Control panel visible
- GitHub account authenticated

---

## Demo Steps

### 1. Show the Source Control Panel (1 min)

- Click the Source Control icon in the Activity Bar
- "This is where all Git operations happen — no command line needed"
- Point to the sections: Changes, Staged Changes, commit message box

### 2. Make a Change (2 min)

- Open `programs/03_reporting.sas`
- Add a comment at the top: `/* Demo: adding a comment for the Git demo */`
- Save the file
- "Watch the Source Control panel — the file appears under Changes"
- Point to the badge on the Source Control icon: "The number shows how many files have changed"

### 3. View the Diff (2 min)

- In the Source Control panel, click the file name (not the + button)
- A diff view opens: "Green = added, red = removed"
- "This shows exactly what changed before I commit"
- Close the diff

### 4. Stage and Commit (3 min)

- Click the **+** next to the file to stage it
- "Staging means: I want to include this file in my next commit"
- Click in the commit message box
- Type: `Add demo comment to reporting program`
- Click **✓ Commit**
- "The file disappears from Changes — it is now in the local history"

### 5. Make a Second Commit (2 min)

- Open `README.md`
- Add a line: `<!-- Demo commit -->`
- Save, stage, commit with message: `Update README for demo`
- "Now I have two commits in my local history"

### 6. Push to GitHub (2 min)

- Click **...** → **Push**
- "This sends my commits to GitHub"
- After pushing: "The sync indicator shows ↑0 — nothing left to push"
- Open a browser, go to the repository on GitHub
- "My commits are here — with the messages I wrote"

### 7. View History (2 min)

- Right-click `programs/03_reporting.sas` in Explorer → **Open Timeline**
- "Every commit that touched this file is listed here"
- Click the demo commit — show the diff
- "I can go back to any point in history"

### 8. Create a Branch (1 min)

- Click the branch name in the Status Bar
- Select **Create new branch...**
- Type: `demo-branch`
- "I am now on a separate branch — changes here do not affect main"
- Switch back to `main`

---

## Transition

"Now practice Git yourself. Open `hands-on/06_git_practice.md`."
