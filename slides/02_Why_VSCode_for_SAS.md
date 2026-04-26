# Topic 02 — Why VS Code for SAS?
## Slide Outline

**Timing:** 20 min slides + 10 min discussion activity  
**Goal:** Participants understand the value proposition of VS Code for SAS development and can articulate when it is the right tool.

---

### Slide 1 — The SAS Developer's Toolkit Today

*Show a visual of the traditional SAS tools:*

| Tool | Where it runs | Best for |
|------|--------------|---------|
| SAS Display Manager | Local Windows | SAS 9.4 interactive |
| SAS Enterprise Guide | Local Windows | Point-and-click + code |
| SAS Studio | Browser (Viya/9.4) | Web-based coding |
| **VS Code + SAS Extension** | **Local, any OS** | **Modern development** |

"These tools are not competitors — they serve different needs. VS Code fills a gap that the others don't."

---

### Slide 2 — The Problem with Browser-Based Tools

SAS Studio is excellent, but browser-based tools have limitations:

- **Requires a network connection** to the SAS server at all times
- **No offline editing** — you cannot write code when disconnected
- **Limited Git integration** — version control is an afterthought
- **Single language** — SAS Studio is for SAS; you switch tools for Python
- **No AI coding assistants** — GitHub Copilot does not work in a browser IDE

"If you work on a laptop, travel, or collaborate with data scientists who use Python, these limitations matter."

---

### Slide 3 — VS Code: A Locally Installed Client

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

### Slide 4 — Multi-Language Development

Modern analytics rarely uses just one language. A typical project might:

1. **Python** — pull data from an API
2. **SAS** — apply statistical models and regulatory-compliant procedures
3. **SQL** — query and aggregate results
4. **R** — create specialized visualizations
5. **Markdown** — document the analysis

In VS Code, all of this happens in one editor, one workspace, one Git repository.

*"How many of you use more than one language in your work?"* (poll/show of hands)

---

### Slide 5 — SAS Notebooks: Code + Story Together

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

### Slide 6 — Git: Version Control Built In

"How do you currently manage versions of your SAS programs?"

Common answers: copy files, add dates to filenames, email versions to yourself.

VS Code has Git built in:

- Every change is tracked with a message and timestamp
- Go back to any previous version instantly
- Work on experiments in a branch without risking the working code
- Collaborate without overwriting each other's work

"Git is the industry standard for code version control. Learning it here means the skill transfers to any language and any tool."

---

### Slide 7 — AI Assistance: GitHub Copilot

GitHub Copilot is an AI pair programmer that:

- **Suggests code** as you type (press Tab to accept)
- **Answers questions** in a chat panel
- **Explains code** you select
- **Fixes errors** when you paste a log message
- **Documents code** on request

It works with SAS. It knows SAS syntax, procedures, and common patterns.

**Free for GitHub users** — no cost for individual accounts.

---

### Slide 8 — AI Assistance: SAS Viya Copilot

For SAS Viya users, there is also a SAS-specific AI extension:

- **Generate SAS code** from natural language comments
- **Explain SAS code** in plain language
- **Add comments** to existing code automatically
- **Create macros** from repetitive code blocks

Requires SAS Viya 4 (release 2025.05 or later) and administrator setup.

"GitHub Copilot is the general-purpose AI. SAS Viya Copilot is the SAS specialist."

---

### Slide 9 — When to Use VS Code vs. Other Tools

| Situation | Best Tool |
|-----------|-----------|
| Quick ad-hoc query on Viya | SAS Studio |
| Point-and-click data prep | SAS Enterprise Guide |
| Developing production SAS programs | **VS Code** |
| Collaborative project with Git | **VS Code** |
| Mixed SAS + Python project | **VS Code** |
| Working offline / on a laptop | **VS Code** |
| Exploratory analysis with narrative | **VS Code (Notebooks)** |
| Regulatory/validated environment | Check with your admin |

"VS Code is not a replacement for every tool — it is the right tool for development work."

---

### Slide 10 — Activity: Your Use Case

**Small group discussion (5 minutes):**

> Think about a recent SAS project you worked on.  
> Which of these VS Code features would have helped you most?
> - Offline editing
> - Multi-language support
> - Notebooks
> - Git version control
> - AI assistance
>
> Share one answer with the group.

*Debrief: collect answers, connect to upcoming topics.*
