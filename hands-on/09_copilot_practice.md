# Practice 09 — AI-Assisted Coding
## Hands-On Exercise

**Estimated time:** 30 minutes  
**Connection required:** Yes (to run and verify generated code)  
**Prerequisite:** GitHub Copilot installed and signed in  
**Objective:** Use GitHub Copilot to generate, document, explain, and fix SAS code.

---

## Exercise 9.1 — Generate Code from a Comment (8 min)

Create a new file: `programs/copilot_practice.sas`

**Task A — Simple generation:**

Type this comment at the top of the file and press Enter:
```sas
/* Print the first 10 observations of sashelp.class, 
   showing only name, age, and height */
```

Wait for Copilot's suggestion (grey text). Press `Tab` to accept.

Run the code with `F8`. Does it produce the expected output?

---

**Task B — More specific generation:**

Add a blank line, then type this comment and press Enter:
```sas
/*
   Using work.sales (Orion Star orsales data):
   Calculate profit margin percentage as Profit / Total_Retail_Price * 100.
   Create a character variable margin_band:
     - 'High'   if margin >= 60%
     - 'Medium' if 40% <= margin < 60%
     - 'Low'    if margin < 40%
   Keep only: Year, Quarter, Product_Line, Product_Group,
              Profit, Total_Retail_Price, margin_pct, margin_band.
   Output to work.sales_banded.
*/
```

Accept the suggestion and run it. Check the log and results.

> **Questions:**
> 1. Did Copilot generate correct SAS syntax?
> 2. Did it handle all three margin bands?
> 3. What would you change?

---

## Exercise 9.2 — Explain Code (5 min)

Open `programs/macros/utility_macros.sas`

**Task A — Explain a macro:**
1. Select the entire first macro (from `%macro` to `%mend`)
2. Open Copilot Chat (chat icon in Activity Bar, or `Ctrl+Alt+I`)
3. Type: `Explain what this macro does and what each parameter is for`
4. Read the explanation

> **Question:** Does the explanation match what you would have guessed from reading the code?

**Task B — Explain a complex expression:**
1. Find a complex SAS expression in any of the course programs (a nested function call, a complex WHERE clause, etc.)
2. Select just that expression
3. Ask Copilot Chat: `Explain this SAS expression in plain language`

---

## Exercise 9.3 — Document Code (7 min)

Open `programs/03_reporting.sas`

**Task A — Add a header comment:**
1. Open Copilot Chat
2. Select the entire program (`Ctrl+A`)
3. Ask:
   > "Write a header comment block for this SAS program. Include: purpose, inputs (datasets and files used), outputs (datasets and reports produced), author placeholder, date placeholder, and a change log section."
4. Copy the generated header and paste it at the top of the file
5. Fill in the placeholders

**Task B — Add inline comments:**
1. Select a DATA step or PROC step in the program
2. Ask Copilot Chat:
   > "Add inline comments to this SAS code explaining what each section does. Keep the comments concise."
3. Review the suggestions and apply the ones that are accurate

**Task C — Document a macro:**
1. Open `programs/macros/utility_macros.sas`
2. Select a macro definition
3. Ask Copilot Chat:
   > "Add a documentation comment block above this macro. Include: purpose, parameters (name, type, description, required/optional), return value or output, and an example call."
4. Insert the generated documentation above the macro

---

## Exercise 9.4 — Fix an Error (5 min)

Open `programs/04_with_errors.sas`

Run the program with `F8`. It will produce errors.

**Task:**
1. Copy one of the error messages from the SAS log (Output panel)
2. Open Copilot Chat
3. Paste the error message and the relevant code section:
   ```
   I'm getting this SAS error:
   [paste the error message here]
   
   Here is the relevant code:
   [paste the code section here]
   
   What is causing this error and how do I fix it?
   ```
4. Read the explanation
5. Apply the suggested fix
6. Re-run the program

Repeat for each error until the program runs cleanly.

> **Reflection:** Did Copilot correctly identify the cause of each error? Were the suggested fixes correct?

---

## Exercise 9.5 — Inline Chat (5 min)

Open `programs/copilot_practice.sas` (from Exercise 9.1)

**Task A:**
1. Place your cursor inside the DATA step you created
2. Press `Ctrl+I` to open inline chat
3. Type: `Add error handling to check if the input dataset exists before processing`
4. Review the suggestion — accept or dismiss

**Task B:**
1. Select the BMI calculation line
2. Press `Ctrl+I`
3. Type: `Add a comment explaining the BMI formula and the unit conversion`
4. Accept the suggestion

---

## Bonus — Refactor with Copilot

If you finish early:

Open `programs/02_data_exploration.sas`

Ask Copilot Chat:
> "This program runs several PROC steps on the same dataset. Refactor it into a macro that accepts the dataset name as a parameter, so it can be reused with different datasets."

Review the generated macro. Does it correctly parameterize the dataset name? Test it by calling the macro with `sashelp.class`.

---

## Reflection Questions

After completing the exercises, discuss with a neighbor:

1. Which Copilot feature did you find most useful?
2. Did Copilot ever generate incorrect SAS code? What was wrong?
3. How would you use Copilot in your daily SAS work?
4. What types of tasks would you NOT use Copilot for?

---

## Summary

After this exercise you should be able to:
- Write effective prompts to generate SAS code
- Use Copilot Chat to explain unfamiliar code
- Generate documentation for programs and macros
- Use Copilot to diagnose and fix SAS errors
- Use inline chat for quick in-editor edits

*Congratulations — you have completed all the hands-on exercises!*
