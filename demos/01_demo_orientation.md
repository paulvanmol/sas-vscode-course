# Demo 01 — VS Code Orientation
## Instructor Demo Script

**Duration:** 10 minutes  
**Connection required:** No  
**Files used:** Any file in the cloned repository

---

## Setup Before Demo

- VS Code open with the course repository folder
- The `programs/01_data_import.sas` file ready to open
- Zoom level set so participants can read the screen

---

## Demo Steps

### 1. The Activity Bar (1 min)

Click each icon in the Activity Bar and name it:
- "This is the Explorer — your file tree"
- "This is Search — finds text across all files"
- "This is Source Control — Git lives here"
- "This is Extensions — where we installed the SAS extension"
- "And this SAS icon was added by the SAS extension"

### 2. Open a File (1 min)

- Click `programs/01_data_import.sas` in the Explorer
- Point out the tab that opens
- "Single click opens a preview — notice the tab title is in italics"
- Double-click the file — "Double-click keeps it open permanently"

### 3. Syntax Highlighting (1 min)

- Point to the colored keywords: `DATA`, `SET`, `RUN`
- Point to a comment — different color
- Point to a string literal — different color
- "The colors are not decoration — they help you spot errors"

### 4. The Command Palette (1 min)

- Press `Ctrl+Shift+P`
- "This is the most important shortcut. Type what you want to do."
- Type `format` — show the Format Document command
- Press Escape to close

### 5. The Status Bar (1 min)

- Point to the Git branch name (bottom left)
- Point to the SAS connection indicator — "This is where we will set up our SAS connection"
- Point to the language indicator — "Shows SAS because this is a .sas file"
- Point to line:column

### 6. The Panel (1 min)

- Press `` Ctrl+` `` to open the terminal
- "This is a real terminal — bash, PowerShell, whatever your system uses"
- Type `git status` and press Enter — show the output
- Click the **Output** tab — "The SAS log will appear here when we run code"
- Click the **Problems** tab — "Syntax errors appear here"

### 7. Split Editor (1 min)

- Right-click the `01_data_import.sas` tab → **Split Right**
- Open `programs/02_data_exploration.sas` in the left pane
- "Two files side by side — useful when writing code that references another file"
- Close the split: drag the divider all the way to one side

### 8. The Outline View (1 min)

- Open `programs/02_data_exploration.sas`
- Scroll down in the Explorer panel to find **Outline**
- "See the DATA steps and PROC steps listed here"
- Click one to jump to it

### 9. Quick Open (1 min)

- Press `Ctrl+P`
- Type `macro` — the `macros/utility_macros.sas` file appears
- Press Enter to open it
- "Faster than clicking through the folder tree for large projects"

### 10. Color Theme (1 min)

- Press `Ctrl+K Ctrl+T`
- Show a few themes — light, dark, high contrast
- "Pick one you like — you will be looking at this all day"
- Return to a readable theme

---

## Talking Points

- "Everything I just showed you works the same for Python, R, or any other language — that is the power of VS Code"
- "You do not need to memorize all the shortcuts today. The Command Palette is your safety net."

---

## Transition

"Now it is your turn. Open `hands-on/01_orientation_practice.md` and work through the exercises."
