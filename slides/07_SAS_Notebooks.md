# Topic 07 — SAS Notebooks
## Slide Outline

**Timing:** 15 min slides + 15 min demo + 30 min practice  
**Goal:** Participants can create a SAS Notebook, add SAS, SQL, and Markdown cells, run cells, and understand when notebooks are the right tool.

---

### Slide 1 — What Is a SAS Notebook?

A SAS Notebook (`.sasnb`) combines:
- **Code cells** — executable SAS, SQL, Python, or R
- **Markdown cells** — formatted text, headings, bullet points, images

Each cell runs independently. Output appears **inline**, directly below the cell.

Think of it as a living document where the code and its results live together.

---

### Slide 2 — Notebooks vs. Programs

| | `.sas` program | `.sasnb` notebook |
|--|---------------|------------------|
| Run | Whole file or selection | One cell at a time |
| Output | Separate Results panel | Inline below each cell |
| Narrative | Comments only | Full Markdown formatting |
| Sharing | Code only | Code + output + explanation |
| Best for | Production jobs, batch | Exploration, reporting, teaching |

"Use a program when you want to run something repeatedly. Use a notebook when you want to tell a story."

---

### Slide 3 — The Notebook Interface

*Show annotated screenshot of a SAS Notebook.*

Key elements:
- **Cell** — the unit of code or text
- **Language selector** — top right of each cell (SAS, SQL, Python, R, Markdown)
- **▶ Run button** — left side of each cell
- **Output area** — below each cell
- **Toolbar** — Run All, Stop, Clear All Outputs

---

### Slide 4 — Cell Types

**SAS cell:**
```sas
proc means data=work.sales n mean min max;
    var revenue cost;
run;
```
Runs as SAS code. Output appears below.

**SQL cell:**
```sql
SELECT region, SUM(revenue) AS total
FROM work.sales
GROUP BY region
ORDER BY total DESC;
```
No `PROC SQL` wrapper needed — just write the SELECT.

**Markdown cell:**
```markdown
## Sales Analysis — Q1 2025
Key findings:
- North region leads in revenue
- Margins improved by 3.2%
```
Renders as formatted text.

---

### Slide 5 — Running Cells

| Action | How |
|--------|-----|
| Run one cell | Click ▶ or press `Shift+Enter` |
| Run all cells | Click **Run All** in toolbar |
| Run cells above | Right-click → **Run Above** |
| Clear all output | Toolbar → **Clear All Outputs** |

Cells share the same SAS session — a dataset created in cell 2 is available in cell 3.

---

### Slide 6 — Language Support by Connection Type

| Language | SAS Viya | SAS 9.4 |
|----------|----------|---------|
| SAS | ✓ | ✓ |
| SQL | ✓ | ✓ |
| Python | ✓ | — |
| R | ✓ | — |
| Markdown | ✓ | ✓ |

Python and R cells require SAS Viya with the appropriate services configured.

---

### Slide 7 — A Notebook Tells a Story

*Show a complete notebook example with alternating Markdown and code cells.*

```
[Markdown]  ## Introduction
            This notebook analyzes Q1 sales data...

[SAS]       proc import datafile=... out=work.sales ...

[Markdown]  ## Summary Statistics

[SAS]       proc means data=work.sales ...

[SQL]       SELECT region, SUM(revenue) ...

[Markdown]  ## Conclusion
            The North region leads in revenue...
```

"A colleague who receives this notebook sees the analysis, the code, and the results — all in one document."

---

### Slide 8 — Notebooks and Git

Notebooks are saved as `.sasnb` files (JSON format). They can be committed to Git.

Two strategies:

**Commit with output:**
- Reviewers can see results without running the code
- File size is larger

**Commit without output (recommended):**
- Use **Clear All Outputs** before committing
- Keeps the repository clean
- Forces anyone who opens it to run it themselves (ensures results are current)

---

### Slide 9 — Converting to a SAS Flow (Viya)

On SAS Viya, you can convert a notebook to a **SAS Flow** — a visual pipeline in SAS Studio:

Right-click the `.sasnb` file → **Convert to Flow**

The flow is created in your SAS Content folder on the Viya server.

"Develop interactively in a notebook, then operationalize as a flow."

---

### Slide 10 — Activity: Notebook or Program?

**Quick poll — which would you use?**

| Scenario | Notebook or Program? |
|----------|---------------------|
| Monthly batch job that runs automatically | ? |
| Exploratory analysis you are sharing with a manager | ? |
| A macro library used by other programs | ? |
| A one-time data quality investigation | ? |
| A tutorial for new team members | ? |

*Discuss answers — there is no single right answer, but there are better choices.*

*Transition to demo.*
