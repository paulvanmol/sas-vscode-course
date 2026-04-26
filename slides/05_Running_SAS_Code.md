# Topic 05 — Running SAS Code
## Slide Outline

**Timing:** 10 min slides + 15 min demo + 25 min practice  
**Goal:** Participants can run SAS programs and selected code, read the log, interpret results, and handle the differences between connection types.

---

### Slide 1 — Three Ways to Run Code

| Method | How | What runs |
|--------|-----|-----------|
| Run entire file | `F8` or click ▶ | The whole `.sas` file |
| Run selected code | Select lines → `F8` | Only the selection |
| Run from notebook | Click ▶ on a cell | That cell only |

"Running selected code is your best friend during development. Select just the step you are working on."

---

### Slide 2 — What Happens When You Run

1. VS Code sends the code to the active SAS connection
2. Status Bar shows a spinning indicator
3. **Output panel** opens — SAS log streams in real time
4. When finished, **Results panel** shows HTML output (if any)

The Status Bar connection indicator:
- `●` green — connected, idle
- `◌` spinning — job running
- `○` grey — not connected

---

### Slide 3 — Reading the SAS Log

The log uses three message types:

```
NOTE:    Everything is fine — informational
WARNING: Something unexpected happened, SAS continued
ERROR:   SAS could not complete the step
```

The SAS extension color-codes them:
- **Blue** — NOTE
- **Orange** — WARNING
- **Red** — ERROR

"Always read the log. A program that runs without errors can still produce wrong results — the log tells you what actually happened."

---

### Slide 4 — Key Log Messages to Know

| Message | What it means |
|---------|--------------|
| `NOTE: The data set WORK.X has N obs and M vars.` | DATA step succeeded |
| `NOTE: PROCEDURE MEANS used (Total process time):` | PROC step completed |
| `WARNING: Variable X is uninitialized.` | Variable used before assigned |
| `WARNING: Numeric values have been converted to character.` | Implicit type conversion |
| `ERROR: File MYLIB.X does not exist.` | Dataset not found |
| `ERROR: Syntax error, expecting one of the following:` | Missing semicolon or keyword |
| `NOTE: 0 observations read from WORK.X.` | Empty dataset — check your WHERE clause |

---

### Slide 5 — Viewing Results

HTML output appears in the **Results panel** (a tab next to the Output panel).

- Scroll, zoom, and copy from the results view
- Multiple result sets stack — scroll down to see all
- Right-click → **Save As** to download as HTML or PDF

"The Results panel shows the same output you would see in SAS Studio or SAS Enterprise Guide's Results pane."

---

### Slide 6 — Cancelling a Job

If a job is running too long:

- Click the **■ Stop** button in the editor toolbar
- Or: `Ctrl+Shift+P` → `SAS: Cancel SAS Job`

Cancellation behavior by connection type:
- **Viya:** Job is cancelled on the server
- **SSH:** SAS process is terminated
- **Local:** SAS session is interrupted

---

### Slide 7 — File Paths: Local vs. Remote

**This is the most common source of confusion for new users.**

When you run code on a **remote** server, file paths must be valid **on the server**:

```sas
/* This works on your local machine but FAILS on a remote server */
libname mydata 'C:\Users\pvanmol\data';

/* This works on a Linux remote server */
libname mydata '/home/pvanmol/data';

/* This works on Viya (server-side path) */
libname mydata '/shared/data';
```

"Think of VS Code as a remote control for SAS. The code runs on the server, not on your laptop."

---

### Slide 8 — Autoexec: Code That Runs First

You can configure SAS statements that run automatically at session start:

In VS Code Settings → search `SAS autoexec`:

```sas
libname mydata '/shared/data';
options mprint mlogic;
```

Useful for:
- Setting up standard libraries
- Enabling macro debugging options
- Setting ODS styles

---

### Slide 9 — Activity: Log Reading Challenge

**Pairs activity (3 minutes):**

Your instructor will show a SAS log on screen.

With your neighbor:
1. Find all the ERRORs
2. Find all the WARNINGs
3. What did the program actually do? (read the NOTEs)
4. What would you fix first?

*Debrief: discuss the log as a group.*

*Transition to demo.*
