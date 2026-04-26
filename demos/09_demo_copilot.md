# Demo 09 — AI-Assisted Coding
## Instructor Demo Script

**Duration:** 15 minutes  
**Connection required:** Yes (SAS connection for running generated code)  
**Files used:** New file created during demo

---

## Setup Before Demo

- GitHub Copilot installed and signed in
- SAS connection active
- A new empty `.sas` file ready to use
- Copilot Chat panel open (click chat icon in Activity Bar)

---

## Demo Steps

### Part A: Inline Completions (4 min)

**1. Show a simple completion (1 min)**

- Open a new file, save as `programs/copilot_demo.sas`
- Type `proc ` (with a space)
- "Watch the grey suggestion appear — that is Copilot"
- Press Tab to accept, or keep typing to dismiss
- "It knows SAS procedure names"

**2. Comment-driven generation (3 min)**

- Clear the file
- Type this comment:
  ```sas
  /* Import the sales.csv file from the data folder.
     Keep only records where revenue > 1000.
     Create a new variable profit_margin = (revenue - cost) / revenue * 100.
     Output to work.sales_filtered. */
  ```
- Press Enter and pause
- "Copilot is reading the comment and generating code"
- Accept the suggestion with Tab
- "Let me read through what it generated..."
- Point out what it got right and what might need adjustment
- Run the code with F8 — show the log

---

### Part B: Copilot Chat (6 min)

**3. Generate a report (2 min)**

- Open Copilot Chat panel
- Type:
  > "Write a PROC REPORT that shows total revenue and average profit margin by region, sorted by total revenue descending, with a grand total row"
- Show the generated code
- Copy it into the editor
- Run it — show the output

**4. Explain code (2 min)**

- Open `programs/macros/utility_macros.sas`
- Select the first macro
- In Copilot Chat, type:
  > "Explain what this macro does and what each parameter is for"
- Show the explanation
- "This is useful when you inherit code you did not write"

**5. Fix an error (2 min)**

- Open `programs/04_with_errors.sas`
- Run it — show the error in the log
- Copy the error message
- In Copilot Chat, paste the error and the relevant code section:
  > "I'm getting this SAS error: [paste error]. Here is my code: [paste code]. What is wrong and how do I fix it?"
- Show the explanation and suggested fix
- Apply the fix and re-run

---

### Part C: Documentation (3 min)

**6. Add a header comment (1.5 min)**

- Open `programs/03_reporting.sas`
- In Copilot Chat, type:
  > "Write a header comment block for this program. Include: purpose, author (placeholder), date (placeholder), inputs, outputs, and a change log section."
- Show the generated header
- Insert it at the top of the file

**7. Add inline comments (1.5 min)**

- Select a DATA step in the program
- In Copilot Chat, type:
  > "Add inline comments to this DATA step explaining what each section does"
- Show the result
- "Copilot is good at explaining code to others — use it to document before you share"

---

### Part D: SAS Viya Copilot (2 min — if available)

*Skip this section if SAS Viya Copilot is not configured in the classroom environment.*

- Show the SAS Viya Copilot extension installed
- Write a comment in a SAS file:
  ```sas
  /* Create a frequency table of sales by product category and region */
  ```
- Right-click → **SAS Viya Copilot: Generate Code**
- Show the generated code
- "Notice this is SAS-specific — it knows SAS syntax and idioms better than a general model"

---

## Key Talking Points

- "AI does not replace SAS knowledge — it amplifies it. You still need to know if the generated code is correct."
- "The better your prompt, the better the code. Vague prompts produce generic code."
- "Use AI for the boilerplate — the repetitive parts. Focus your expertise on the logic."
- "Always run AI-generated code on small data first."

---

## Transition

"Now try it yourself. Open `hands-on/09_copilot_practice.md` — there are four exercises that cover generation, explanation, documentation, and error fixing."
