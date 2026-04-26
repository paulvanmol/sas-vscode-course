# Topic 04 — Writing SAS Code
## Slide Outline

**Timing:** 15 min slides + 15 min demo + 20 min practice  
**Goal:** Participants can use the editor's SAS-specific features to write code faster and with fewer errors.

---

### Slide 1 — The SAS Editor: What's Different

VS Code's editor is a general-purpose code editor. The SAS Extension adds SAS-specific intelligence on top:

- Syntax highlighting for SAS keywords, macros, strings, comments
- Code completion (IntelliSense) for procedures, functions, options
- Hover help — documentation without leaving the editor
- Code folding — collapse DATA/PROC/MACRO blocks
- Outline view — navigate large programs
- Snippets — templates for common patterns
- Static analysis — catch errors before you run

---

### Slide 2 — Syntax Highlighting

*Show a SAS program with highlighting — use a screenshot or live demo.*

Color coding helps you spot:
- **Missing semicolons** — the color changes unexpectedly
- **Unclosed strings** — everything after the quote turns string-colored
- **Macro vs. base SAS** — macro keywords are a different color
- **Comments** — clearly distinguished from code

"Your eye learns to read the colors. An unexpected color change is often the first sign of a syntax error."

---

### Slide 3 — Code Completion (IntelliSense)

As you type, a suggestion list appears automatically. Press `Tab` or `Enter` to accept.

What gets completed:
- Procedure names: type `proc ` → list of all procedures
- Statement keywords: inside `PROC MEANS`, type `var` → suggests `VAR` statement
- SAS functions: type `substr(` → shows the function signature
- Macro functions: type `%sysfunc(` → shows syntax

**Trigger manually:** `Ctrl+Space`

*Show live: type `proc re` and watch the list filter to REPORT, REG, etc.*

---

### Slide 4 — Hover Help

Hover your mouse over any SAS keyword → a tooltip appears with:
- What it does
- Syntax summary
- Link to full SAS documentation

Works **without an active SAS connection** — the documentation is built into the extension.

*Show live: hover over `PROC MEANS`, then over `SUBSTR`.*

"This is the fastest way to check syntax without switching to a browser."

---

### Slide 5 — Code Folding

Click the **▼** arrow in the gutter to collapse a block. Click **▶** to expand.

Foldable regions:
- `DATA ... RUN;`
- `PROC ... RUN;` / `PROC ... QUIT;`
- `%MACRO ... %MEND;`
- `/* ... */` block comments

Keyboard shortcuts:
- `Ctrl+Shift+[` — fold current block
- `Ctrl+Shift+]` — unfold current block
- `Ctrl+K Ctrl+0` — fold all
- `Ctrl+K Ctrl+J` — unfold all

"In a 500-line program, fold everything and then expand only the step you are working on."

---

### Slide 6 — The Outline View

The Outline panel (bottom of Explorer) shows the program structure as a tree:

- DATA steps
- PROC steps
- Macro definitions

Click any entry to jump to that location.

*Show live: open a multi-step program and click through the outline.*

---

### Slide 7 — Code Snippets

Type a short trigger word and press `Tab` to expand a template:

| Trigger | Expands to |
|---------|-----------|
| `ds` | DATA step skeleton with placeholders |
| `proc` | PROC step skeleton |
| `macro` | `%MACRO ... %MEND` skeleton |
| `if` | `IF ... THEN ... ELSE` |
| `do` | `DO ... END` loop |
| `dowhile` | `DO WHILE (...)` loop |
| `select` | `SELECT ... WHEN ... OTHERWISE ... END` |

After expanding, press `Tab` to move between placeholders.

*Show live: type `ds` + Tab and fill in the placeholders.*

---

### Slide 8 — Code Formatting

Format your entire file with one shortcut:

- `Shift+Alt+F` (Windows/Linux)
- `Shift+Option+F` (macOS)

Or right-click → **Format Document**

To format on every save:
```json
"editor.formatOnSave": true
```

"Consistent formatting makes code easier to read and review. Use it before committing to Git."

---

### Slide 9 — The Problems Panel

`Ctrl+Shift+M` opens the Problems panel.

The SAS extension performs **static analysis** — it checks your code for issues without running it:

- Missing semicolons
- Unmatched quotes
- Unmatched `%DO` / `%END`
- Undefined macro variables (where detectable)

Issues appear as you type — red underlines in the editor, entries in the Problems panel.

"Static analysis catches the easy mistakes. The SAS log catches the rest."

---

### Slide 10 — Activity: Spot the Errors

**Individual activity (3 minutes):**

Open `programs/04_with_errors.sas` in VS Code.

Without running the code:
1. How many errors does the Problems panel show?
2. What are they? (hover over the red underlines)
3. Can you fix them before running?

*Debrief: discuss what the static analysis caught and what it missed.*

*Transition to demo.*
