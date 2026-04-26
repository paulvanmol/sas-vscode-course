# PSGEL999: SAS Extension for Visual Studio Code
## Hands-On Workshop

**Course Type:** Instructor-Led Workshop  
**Duration:** 1 day (approximately 6.5 hours of instruction + exercises)  
**Level:** Beginner to Intermediate  
**Audience:** SAS programmers who want a modern, flexible development environment  
**Published by:** SAS Global Enablement and Learning (GEL)

---

## Course Description

This workshop introduces SAS programmers to Visual Studio Code as a professional SAS development environment. Participants work through a realistic project from start to finish: forking a starter repository, setting up Git version control, writing and running SAS programs and notebooks, and using AI assistance to accelerate development.

The course covers all connection types supported by the SAS Extension — local SAS 9.4, remote SAS 9.4 (IOM and SSH), and SAS Viya — and shows how VS Code bridges SAS and open-source languages in a single tool.

---

## Why VS Code for SAS?

SAS programmers have traditionally worked in SAS-specific tools: SAS Display Manager, SAS Enterprise Guide, or SAS Studio. VS Code offers something different:

- **No browser required** — a locally installed client that works offline
- **Multi-language** — write SAS, SQL, Python, and R in the same workspace
- **SAS Notebooks** — combine code, output, and narrative in one document
- **Git built in** — version control without leaving the editor
- **AI assistance** — GitHub Copilot and SAS Viya Copilot integrate directly
- **Free and open source** — available to everyone, on every platform

---

## Prerequisites

Participants should have:
- Basic SAS programming experience (DATA step and PROC familiarity)
- A GitHub account (free at https://github.com)
- Access to at least one SAS environment (Viya, SAS 9.4 local, or remote)

No prior VS Code experience is required.

---

## Course Structure

Each topic follows this pattern:

```
┌─────────────────────────────────────────────────────┐
│  SLIDES        Concepts and context (10-15 min)     │
│  DEMO          Instructor demonstration (10-15 min) │
│  ACTIVITY      Quick engagement check (2-3 min)     │
│  PRACTICE      Participant hands-on exercise        │
└─────────────────────────────────────────────────────┘
```

| # | Topic | Slides | Demo | Practice | Total |
|---|-------|--------|------|----------|-------|
| 00 | Course Introduction & Setup | 15 min | — | Fork & clone repo | 30 min |
| 01 | VS Code Orientation | 15 min | 10 min | Explore the interface | 15 min |
| 02 | Why VS Code for SAS | 20 min | — | Discussion activity | 10 min |
| 03 | Connecting to SAS | 15 min | 15 min | Configure a profile | 20 min |
| 04 | Writing SAS Code | 15 min | 15 min | Editor features exercise | 20 min |
| 05 | Running SAS Code | 10 min | 15 min | Run and fix programs | 25 min |
| 06 | Git Version Control | 20 min | 15 min | Commit and push | 25 min |
| 07 | SAS Notebooks | 15 min | 15 min | Build a notebook | 30 min |
| 08 | SAS Content & Libraries | 10 min | 10 min | Browse and download | 15 min |
| 09 | AI-Assisted Coding | 20 min | 15 min | Copilot exercises | 30 min |
| — | Wrap-up & Q&A | 15 min | — | — | 15 min |
| **Total** | | **170 min** | **110 min** | **210 min** | **~8 hrs** |

> **Delivery note:** For a half-day format, cover topics 00–05 on day 1 and 06–09 on day 2, or select topics based on audience needs.

---

## Repository Structure

```
PSGEL999-vscode-sas/
├── README.md                          ← This file
├── slides/                            ← Slide outlines per topic
│   ├── 00_Introduction.md
│   ├── 01_VS_Code_Orientation.md
│   ├── 02_Why_VSCode_for_SAS.md
│   ├── 03_Connecting_to_SAS.md
│   ├── 04_Writing_SAS_Code.md
│   ├── 05_Running_SAS_Code.md
│   ├── 06_Git_Version_Control.md
│   ├── 07_SAS_Notebooks.md
│   ├── 08_SAS_Content_Libraries.md
│   └── 09_AI_Assisted_Coding.md
├── demos/                             ← Instructor demo scripts
│   ├── 01_demo_orientation.md
│   ├── 03_demo_connections.md
│   ├── 04_demo_editor.md
│   ├── 05_demo_running_code.md
│   ├── 06_demo_git.md
│   ├── 07_demo_notebooks.md
│   ├── 08_demo_content_libraries.md
│   └── 09_demo_copilot.md
├── hands-on/                          ← Participant exercise files
│   ├── 00_setup.md
│   ├── 01_orientation_practice.md
│   ├── 03_connection_practice.md
│   ├── 04_editor_practice.md
│   ├── 05_running_code_practice.md
│   ├── 06_git_practice.md
│   ├── 07_notebooks_practice.md
│   ├── 08_content_libraries_practice.md
│   └── 09_copilot_practice.md
├── programs/                          ← SAS programs used in exercises
│   ├── 01_data_import.sas
│   ├── 02_data_exploration.sas
│   ├── 03_reporting.sas
│   ├── 04_with_errors.sas
│   └── macros/
│       └── utility_macros.sas
├── notebooks/
│   └── analysis_template.sasnb
├── data/
│   ├── sales.csv
│   └── customers.csv
├── output/
│   └── .gitkeep
├── appendix/
│   ├── A1_Capabilities_by_Connection_Type.md
│   ├── A2_Installation_Guide.md
│   ├── A3_Configuring_the_Extension.md
│   └── A4_FAQ.md
└── .vscode/
    └── settings.json
```

---

## Course Data

This repository uses two datasets from the [SAS Viya Example Data Sets](https://support.sas.com/documentation/onlinedoc/viya/examples.htm) page:

| File | Source | Rows | Columns |
|------|--------|------|---------|
| `data/sales.csv` | `orsales.csv` from support.sas.com | 912 | Year, Quarter, Product_Line, Product_Category, Product_Group, Quantity, Profit, Total_Retail_Price |
| `data/customer.csv` | `customer.csv` from support.sas.com | 5,637 | ID, Name, Activity, Country, Gender, BirthDate, Issue_Lev1, Issue_Lev2, Call_Category1, Call_Category2, Resolution, Verbatims |

### Option A — Files committed to Git (default)

The CSV files are included in this repository. Clone the repo and they are ready to use.

### Option B — Download via SAS PROC HTTP

Run `programs/00_download_data.sas` to download the files directly from support.sas.com:

```sas
/* Set the path where you want the files saved, then run: */
%let out_path = ./data;
/* ... rest of the program handles the download */
```

### Option C — Download via Python

```bash
python programs/00_download_data.py
```

Requires Python 3.7+ and the `requests` library (`pip install requests`).

Before the workshop begins:

1. **Fork this repository** to your GitHub account  
   → Click **Fork** at the top of this page

2. **Clone your fork** to your local machine  
   ```bash
   git clone https://github.com/<your-username>/PSGEL999-vscode-sas
   ```

3. **Open the folder in VS Code**  
   ```bash
   code PSGEL999-vscode-sas
   ```

4. **Install the SAS extension**  
   → Extensions panel → search `SAS` → install **SAS** by SAS Institute Inc.

Detailed setup instructions are in `hands-on/00_setup.md`.

---

## Instructor Resources

- Slide outlines are in the `slides/` folder — adapt to your presentation tool (PowerPoint, Reveal.js, etc.)
- Demo scripts in `demos/` include step-by-step instructions and talking points
- Each practice file in `hands-on/` includes estimated time, objectives, and solution hints
- The `appendix/` folder contains reference material participants can consult during and after the workshop

---

## Related Resources

| Resource | URL |
|----------|-----|
| SAS Extension GitHub | https://github.com/sassoftware/vscode-sas-extension |
| Official Documentation | https://sassoftware.github.io/vscode-sas-extension |
| SAS Developer Portal | https://developer.sas.com/programming/vs_code_extension |
| SAS Viya Copilot Docs | https://sassoftware.github.io/sas-copilot |
| SAS Communities | https://communities.sas.com |
| VS Code Download | https://code.visualstudio.com |

---

*SAS Global Enablement and Learning (GEL) — gitlab.sas.com*
