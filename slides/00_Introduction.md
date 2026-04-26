# Topic 00 — Course Introduction & Setup
## Slide Outline

**Timing:** 15 min slides + 30 min setup practice  
**Goal:** Participants understand the course structure, have the software installed, and have forked and cloned the starter repository.

---

### Slide 1 — Title Slide

**PSGEL999: SAS Extension for Visual Studio Code**  
*A Hands-On Workshop*

SAS Global Enablement and Learning

---

### Slide 2 — Welcome & Introductions

- Instructor introduction
- Participant introductions (name, role, SAS environment they use)
- Logistics: breaks, questions, chat/raise hand

**Talking point:** "Before we start — how many of you have used VS Code before? How many have used Git? This course assumes neither, so we will cover both."

---

### Slide 3 — What We Will Cover Today

Visual overview of the 9 topics with icons:

1. VS Code Orientation
2. Why VS Code for SAS
3. Connecting to SAS
4. Writing SAS Code
5. Running SAS Code
6. Git Version Control
7. SAS Notebooks
8. SAS Content & Libraries
9. AI-Assisted Coding

---

### Slide 4 — How This Course Works

Each topic follows the same pattern:

```
SLIDES  →  DEMO  →  ACTIVITY  →  PRACTICE
```

- **Slides:** Concepts and context
- **Demo:** Instructor shows it live — watch first, then do
- **Activity:** Quick question or poll to check understanding
- **Practice:** You do it yourself with the exercise files

"The practice files are in the `hands-on/` folder of the repository you will clone in a moment."

---

### Slide 5 — The Starter Repository

**github.com/paulvanmol/sas-vscode-course**

- Contains all programs, data, and notebooks used in exercises
- You will **fork** it (make your own copy) and **clone** it (download it)
- All your work stays in your fork — you cannot break the original

*Show the repository structure diagram from the README.*

---

### Slide 6 — Prerequisites Check

Ask participants to confirm:

- [ ] GitHub account created
- [ ] VS Code installed (version 1.89+)
- [ ] SAS Extension installed (SAS Institute Inc.)
- [ ] Git installed
- [ ] Access to a SAS environment

"If any of these are missing, the setup guide is in `appendix/A2_Installation_Guide.md`. We will take 10 minutes now for anyone who needs to catch up."

---

### Slide 7 — Setup: Fork and Clone

**Step 1 — Fork:**  
Go to `github.com/paulvanmol/sas-vscode-course` → click **Fork**

**Step 2 — Clone in VS Code:**  
`Ctrl+Shift+P` → `Git: Clone` → paste your fork URL

**Step 3 — Open the folder:**  
VS Code prompts "Open cloned repository?" → click **Open**

*Instructor walks through this live while participants follow along.*

---

### Slide 8 — What You Just Did

```
GitHub (paulvanmol)          GitHub (your account)        Your machine
┌──────────────────┐  Fork   ┌──────────────────┐  Clone  ┌──────────────┐
│  sas-vscode-     │ ──────► │  sas-vscode-     │ ──────► │  local copy  │
│  course          │         │  course          │         │  on disk     │
└──────────────────┘         └──────────────────┘         └──────────────┘
   Original                     Your copy                   Working copy
   (read-only for you)          (you own this)              (edit here)
```

"Your changes go to your fork. You can always pull updates from the original."

---

### Slide 9 — Ready to Start

"Open `hands-on/00_setup.md` in VS Code. This is your checklist for the rest of the course."

*Transition to Topic 01.*
