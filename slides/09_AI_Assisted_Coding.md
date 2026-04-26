# Topic 09 — AI-Assisted Coding
## Slide Outline

**Timing:** 20 min slides + 15 min demo + 30 min practice  
**Goal:** Participants can use GitHub Copilot to generate, document, explain, and fix SAS code. They understand the privacy settings and the difference between GitHub Copilot and SAS Viya Copilot.

---

### Slide 1 — AI in Your Editor

Two AI tools work with the SAS Extension:

| Tool | What it does | Requires |
|------|-------------|---------|
| **GitHub Copilot** | Inline completions + chat for all connection types | GitHub account (free tier) |
| **SAS Viya Copilot** | SAS-specific AI commands | SAS Viya 2025.05+ |

"These are not the same tool. GitHub Copilot is a general-purpose AI coding assistant. SAS Viya Copilot is a SAS specialist."

---

### Slide 2 — GitHub Copilot: Free for GitHub Users

GitHub Copilot has a **free tier** for individual GitHub accounts:

1. Go to `github.com/settings/copilot`
2. Click **Start using Copilot for free**
3. Install the extension in VS Code (Extensions → search `GitHub Copilot`)
4. Sign in when prompted

The free tier includes a monthly allowance of completions and chat messages — sufficient for learning and moderate use.

---

### Slide 3 — Privacy: Protecting Your Code

**Before using Copilot with work code, check these settings:**

Go to `github.com/settings/copilot`:

- **"Allow GitHub to use my code snippets for product improvements"** → **Uncheck this**
- **"Suggestions matching public code"** → Set to **Blocked**

This ensures your SAS code and prompts are not used to train future AI models.

"For corporate environments: your GitHub organization administrator may have already configured these settings. Check before changing."

---

### Slide 4 — Inline Completions

As you type, Copilot suggests completions in grey text.

- **Tab** — accept the suggestion
- **Escape** — dismiss it
- **Alt+]** — see next suggestion
- **Alt+[** — see previous suggestion

The best way to trigger a good suggestion: **write a detailed comment first**.

```sas
/* Calculate the 30-day rolling average of daily sales revenue,
   grouped by product category */
```
Press Enter → Copilot suggests the code.

---

### Slide 5 — Copilot Chat

Click the **chat icon** in the Activity Bar (or `Ctrl+Alt+I`).

Use it to:
- **Generate code:** "Write a PROC REPORT that shows sales by region with subtotals"
- **Explain code:** Select code → "Explain what this macro does"
- **Fix errors:** Paste a SAS error message → "What is causing this and how do I fix it?"
- **Document code:** Select code → "Add a header comment block to this program"
- **Refactor:** "Rewrite this DATA step to use a hash table instead of MERGE"

---

### Slide 6 — Inline Chat

Press `Ctrl+I` (Windows/Linux) or `Cmd+I` (macOS) to open a chat box **inside the editor**.

Type your request → Copilot modifies the code in place.

Examples:
- "Add error handling to this DATA step"
- "Convert this DO loop to use arrays"
- "Add a WHERE clause to filter for year = 2024"

"Inline chat is faster for small edits. The chat panel is better for longer conversations."

---

### Slide 7 — Generating SAS Code

**The key to good AI output: be specific.**

Vague prompt → generic code:
> "Write a SAS program"

Specific prompt → useful code:
> "Write a SAS DATA step that reads WORK.SALES, calculates profit margin as (revenue - cost) / revenue * 100, flags records where margin < 10% as 'LOW', and outputs to WORK.SALES_FLAGGED"

**Always review and test AI-generated code before using it.**

---

### Slide 8 — Documenting SAS Code with Copilot

Select a program or macro, open Copilot Chat, and ask:

> "Write a header comment block for this program. Include: purpose, author placeholder, date placeholder, inputs, outputs, and a change log section."

Or for a macro:

> "Add a documentation comment to this macro describing each parameter, what it does, and an example call."

"AI is excellent at documentation. Use it to document code you have already written and tested."

---

### Slide 9 — Fixing SAS Errors with Copilot

Workflow:
1. Run your code
2. Copy the error message from the SAS log
3. Open Copilot Chat
4. Paste the error + the relevant code
5. Ask: "What is causing this error and how do I fix it?"

Example:
> ```
> ERROR: BY variables are not properly sorted on data set WORK.TRANSACTIONS.
> 
> My code:
> data work.result;
>     merge work.customers work.transactions;
>     by customer_id;
> run;
> ```
> What is wrong and how do I fix it?

---

### Slide 10 — SAS Viya Copilot

For SAS Viya 2025.05+ users, the **SAS Viya Copilot** extension adds SAS-specific commands:

Install: Extensions → search `SAS Viya Copilot` → install (SAS Institute Inc.)

Right-click menu commands:
- **Generate Code** — write a comment, right-click → generate SAS code from it
- **Explain Code** — plain-language explanation of selected code
- **Add Comments** — automatically add inline comments to selected code
- **Create Macro** — wrap selected code in a parameterized macro

Requires: SAS Viya 4 (2025.05+) with GenAI Gateway configured by a SAS administrator.

---

### Slide 11 — GitHub Copilot vs. SAS Viya Copilot

| | GitHub Copilot | SAS Viya Copilot |
|--|---------------|-----------------|
| Inline completions | ✓ | — |
| Chat interface | ✓ | — |
| Generate code | ✓ | ✓ |
| Explain code | ✓ (via chat) | ✓ (dedicated command) |
| Add comments | ✓ (via chat) | ✓ (dedicated command) |
| Create macros | ✓ (via chat) | ✓ (dedicated command) |
| Works with SAS 9.4 | ✓ | — |
| SAS-specific training | General | SAS-specific |
| Cost | Free tier available | Requires Viya 2025.05+ |

---

### Slide 12 — Best Practices

1. **Review every suggestion** — AI can produce plausible but wrong SAS code
2. **Test on small data first** — before applying to production
3. **Check the log** — AI-generated code may produce unexpected WARNINGs
4. **Be specific in prompts** — detail produces better results
5. **Use AI for documentation** — it excels at writing comments
6. **Protect sensitive data** — do not paste real customer data into chat prompts
7. **Learn from suggestions** — when Copilot uses a technique you do not know, ask it to explain

---

### Slide 13 — Activity: Prompt Engineering

**Pairs activity (3 minutes):**

Improve these prompts to get better SAS code from Copilot:

1. "Write a SAS report"
2. "Fix my macro"
3. "Read a CSV file"

Write an improved version of each prompt. Share with the group.

*Debrief: what makes a prompt specific enough to be useful?*

*Transition to demo.*
