# Topic 01 — VS Code Orientation
## Slide Outline

**Timing:** 15 min slides + 10 min demo + 15 min practice  
**Goal:** Participants can navigate the VS Code interface confidently and know where to find the features they will use throughout the course.

---

### Slide 1 — The VS Code Interface at a Glance

*Show annotated screenshot of VS Code with the five areas labeled.*

```
┌──────────────────────────────────────────────────────────────┐
│  Menu Bar                                                    │
├──────┬───────────────────────────────────────────────────────┤
│      │                                                       │
│  A   │              Editor Area                             │
│  c   │         (open files as tabs)                         │
│  t   │                                                       │
│  i   ├───────────────────────────────────────────────────────┤
│  v   │              Panel                                    │
│  i   │    Terminal / Output / Problems / Debug Console       │
│  t   │                                                       │
│  y   ├───────────────────────────────────────────────────────┤
│  B   │              Status Bar                               │
│  a   │   branch · errors · connection · language · line:col  │
│  r   │                                                       │
└──────┴───────────────────────────────────────────────────────┘
```

---

### Slide 2 — The Activity Bar

The vertical strip of icons on the left. Each icon opens a **sidebar panel**:

| Icon | Panel | Shortcut |
|------|-------|---------|
| 📄 | Explorer — file tree | `Ctrl+Shift+E` |
| 🔍 | Search — find in files | `Ctrl+Shift+F` |
| 🌿 | Source Control — Git | `Ctrl+Shift+G` |
| ▶ | Run and Debug | `Ctrl+Shift+D` |
| 🧩 | Extensions | `Ctrl+Shift+X` |
| 🔷 | SAS — content & libraries | *(added by SAS extension)* |
| 💬 | Copilot Chat | *(added by GitHub Copilot)* |

---

### Slide 3 — The Command Palette

**The most important shortcut in VS Code:**

`Ctrl+Shift+P` (Windows/Linux) | `Cmd+Shift+P` (macOS)

- Runs any VS Code command by name
- No need to memorize menus
- Type what you want to do

Examples:
- `Git: Clone` — clone a repository
- `SAS: Add New Connection Profile` — set up a SAS connection
- `Format Document` — format the current file
- `Preferences: Open Settings` — open settings

"When in doubt, open the Command Palette and type what you want."

---

### Slide 4 — The Explorer Panel

The file tree for your workspace:

- Shows all files and folders in the opened folder
- Click a file to open it (single click = preview, double click = keep open)
- Right-click for context menu: New File, New Folder, Rename, Delete
- Drag files to move them

**Outline section** (bottom of Explorer):  
Shows the structure of the current SAS file — DATA steps, PROC steps, macros. Click to jump.

---

### Slide 5 — The Editor Area

Where you write code:

- **Tabs** — one tab per open file
- **Split editor** — right-click a tab → Split Right (view two files side by side)
- **Breadcrumb** — shows file path and current position in the code
- **Minimap** — small code overview on the right edge (scroll indicator)
- **Gutter** — left margin: line numbers, breakpoints, fold arrows

---

### Slide 6 — The Panel (Bottom)

Four tabs at the bottom:

| Tab | What it shows |
|-----|--------------|
| **Terminal** | Integrated command line (bash, PowerShell, cmd) |
| **Output** | SAS log appears here when you run code |
| **Problems** | Syntax errors and warnings detected in your code |
| **Debug Console** | Debugging output (less relevant for SAS) |

Toggle the panel: `` Ctrl+` `` (backtick)

---

### Slide 7 — The Status Bar

The colored bar at the very bottom. Left to right:

- **Git branch** — current branch name (click to switch)
- **Sync indicator** — ↑↓ arrows showing unpushed/unpulled commits
- **Errors/Warnings** — count from the Problems panel
- **SAS connection** — active profile name (click to switch)
- **Language** — current file's language (click to change)
- **Line:Column** — cursor position
- **Copilot** — AI status indicator

---

### Slide 8 — Essential Keyboard Shortcuts

*Printed reference card — participants keep this.*

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Command Palette | `Ctrl+Shift+P` | `Cmd+Shift+P` |
| Quick open file | `Ctrl+P` | `Cmd+P` |
| Open terminal | `` Ctrl+` `` | `` Ctrl+` `` |
| Open settings | `Ctrl+,` | `Cmd+,` |
| Find in file | `Ctrl+F` | `Cmd+F` |
| Find in all files | `Ctrl+Shift+F` | `Cmd+Shift+F` |
| Format document | `Shift+Alt+F` | `Shift+Option+F` |
| **Run SAS code** | **`F8`** | **`F8`** |
| Toggle sidebar | `Ctrl+B` | `Cmd+B` |
| Split editor | `Ctrl+\` | `Cmd+\` |
| Zoom in/out | `Ctrl++` / `Ctrl+-` | `Cmd++` / `Cmd+-` |

---

### Slide 9 — Activity: Interface Scavenger Hunt

**Individual activity (3 minutes):**

Without looking at the slides, find these things in VS Code:

1. The name of the Git branch you are on (look at the Status Bar)
2. How many files are in the `programs/` folder (look in Explorer)
3. The keyboard shortcut to open the terminal (try it!)
4. Where the SAS connection indicator is (Status Bar — what does it show?)

*Quick debrief — who found all four?*

---

### Slide 10 — Customizing VS Code

VS Code is highly customizable:

- **Color theme:** `Ctrl+K Ctrl+T` — choose light, dark, or high-contrast
- **Font size:** Settings → `editor.fontSize`
- **Zoom:** `Ctrl++` / `Ctrl+-` affects the whole UI
- **Settings sync:** Sign in with GitHub to sync settings across machines

"Spend 2 minutes now setting a theme you like — you will be staring at this for the rest of the day."

*Transition to demo.*
