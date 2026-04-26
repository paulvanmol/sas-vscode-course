# Topic 02 — Why VS Code for SAS?
## Slide Outline

**Timing:** 20 min slides + 10 min discussion activity  
**Goal:** Participants understand the value proposition of VS Code for SAS development and can articulate when it is the right tool.

---

### Slide 1 — The SAS Developer's Toolkit Today

*Show a visual of the SAS coding tools available:*

| Tool | Where it runs | Strengths |
|------|--------------|---------|
| SAS Display Manager | Local Windows | SAS 9.4 interactive, classic interface |
| SAS Enterprise Guide | Local Windows | Point-and-click + code, task-driven |
| SAS Studio (Viya) | Browser — VS Code web engine | Git, Python, R, AI Copilot, notebooks |
| SAS Studio (9.4) | Browser | Web-based SAS coding |
| **VS Code + SAS Extension** | **Local, any OS** | **Locally installed, offline, multi-language, AI** |

"These tools are not competitors — they serve different needs. Understanding where each one fits helps you choose the right tool for the job."

---

### Slide 2 — SAS Studio on Viya: More Capable Than You May Think

Before we talk about VS Code's advantages, it is worth being accurate about SAS Studio on Viya:

**SAS Studio (Viya) has evolved significantly:**
- Runs on a **VS Code web engine** — the same editor core as VS Code desktop
- Supports **Git integration** for version control directly in the browser
- Supports **Python** coding (stable) and **R** coding (PROC R stable from 2026.03; R in the Code Editor from 2026.04)
- Integrates with **SAS Viya Copilot** for AI-assisted code generation, explanation, and documentation
- Supports **SAS Notebooks** for mixed-language, narrative-style analysis

"SAS Studio on Viya is a strong, modern tool. If you are already using it and it meets your needs, that is a valid choice."

---

### Slide 3 — So Why VS Code?

Given that SAS Studio on Viya is capable, VS Code still offers things it cannot:

- **Locally installed client** — works fully offline; no browser, no network required to edit code
- **Connects to all SAS environments** — Viya, SAS 9.4 local, SAS 9.4 remote IOM, SAS 9.4 SSH — from one tool
- **GitHub Copilot** — works with any connection type, not just Viya; free tier available to all GitHub users
- **Full VS Code extension ecosystem** — thousands of extensions for linting, themes, database tools, Docker, and more
- **Your environment, your machine** — settings, shortcuts, and extensions you configure once and use everywhere
- **Works without a SAS Viya deployment** — critical for SAS 9.4 shops or mixed environments

"VS Code is the right choice when you need to work across multiple SAS environments, work offline, or want the full desktop development experience."

---

### Slide 4 — VS Code: A Locally Installed Client

VS Code is installed on your machine, not in a browser:

```
Your Machine                          SAS Server
┌─────────────────────────┐           ┌──────────────────┐
│  VS Code                │           │                  │
│  ┌─────────────────┐    │  Network  │  SAS Viya        │
│  │ SAS Extension   │◄──────────────►│  SAS 9.4 IOM     │
│  └─────────────────┘    │           │  SAS 9.4 SSH     │
│  ┌─────────────────┐    │           │                  │
│  │ Git             │    │           └──────────────────┘
│  └─────────────────┘    │
│  ┌─────────────────┐    │
│  │ GitHub Copilot  │    │
│  └─────────────────┘    │
└─────────────────────────┘
```

- **Edit code offline** — connect to SAS only when you run
- **All tools in one place** — Git, AI, SAS, Python, R
- **Your environment** — themes, shortcuts, extensions you choose

---

### Slide 5 — Multi-Language Development

Modern analytics rarely uses just one language. A typical project might:

1. **Python** — pull data from an API
2. **SAS** — apply statistical models and regulatory-compliant procedures
3. **SQL** — query and aggregate results
4. **R** — create specialized visualizations
5. **Markdown** — document the analysis

In VS Code, all of this happens in one editor, one workspace, one Git repository.

*"How many of you use more than one language in your work?"* (poll/show of hands)

---

### Slide 6 — SAS Notebooks: Code + Story Together

Traditional SAS development:

```
program.sas  →  run  →  log file  →  output file  →  Word document
```

With SAS Notebooks:

```
notebook.sasnb  =  code + output + explanation, all in one file
```

- Run one cell at a time during exploration
- Results appear inline, below each cell
- Share the notebook — the reader sees code AND results
- Commit to Git — the history shows how the analysis evolved

---

### Slide 7 — Git: Version Control Built In

"How do you currently manage versions of your SAS programs?"

Common answers: copy files, add dates to filenames, email versions to yourself.

VS Code has Git built in:

- Every change is tracked with a message and timestamp
- Go back to any previous version instantly
- Work on experiments in a branch without risking the working code
- Collaborate without overwriting each other's work

"Git is the industry standard for code version control. Learning it here means the skill transfers to any language and any tool."

---

### Slide 8 — AI Assistance: GitHub Copilot

GitHub Copilot is an AI pair programmer that:

- **Suggests code** as you type (press Tab to accept)
- **Answers questions** in a chat panel
- **Explains code** you select
- **Fixes errors** when you paste a log message
- **Documents code** on request

It works with SAS. It knows SAS syntax, procedures, and common patterns.

**Free for GitHub users** — no cost for individual accounts.

---

### Slide 9 — AI Assistance: SAS Viya Copilot

For SAS Viya users, there is also a SAS-specific AI extension:

- **Generate SAS code** from natural language comments
- **Explain SAS code** in plain language
- **Add comments** to existing code automatically
- **Create macros** from repetitive code blocks

Requires SAS Viya 4 (release 2025.05 or later) and administrator setup.

"GitHub Copilot is the general-purpose AI. SAS Viya Copilot is the SAS specialist."

---

### Slide 10 — When to Use VS Code vs. Other Tools

| Situation | Best Tool |
|-----------|-----------|
| Quick ad-hoc query, already in a browser | SAS Studio (Viya) |
| Point-and-click data prep and tasks | SAS Enterprise Guide |
| Developing production SAS programs | **VS Code** |
| Collaborative project with Git | **VS Code** or SAS Studio (Viya) |
| Mixed SAS + Python project | **VS Code** |
| Working offline / on a laptop | **VS Code** |
| Exploratory analysis with narrative | **VS Code (Notebooks)** or SAS Studio (Viya) |
| Connecting to SAS 9.4 (local or remote) | **VS Code** |
| Regulatory/validated environment | Check with your admin |

"The key differentiator for VS Code: it works with **all** SAS environments from one locally installed tool, and it works offline."

---

### Slide 11 — Activity: Your Use Case

**Small group discussion (5 minutes):**

> Think about a recent SAS project you worked on.  
> You may already use SAS Studio on Viya — that is fine.  
> Which of these VS Code features would have added value for that project?
> - Offline editing (no browser, no network needed)
> - Connecting to SAS 9.4 as well as Viya from one tool
> - GitHub Copilot (works with any connection, free tier)
> - Full VS Code extension ecosystem
> - Working in the same tool as your Python/R colleagues
>
> Share one answer with the group.

*Debrief: collect answers, connect to upcoming topics.*
