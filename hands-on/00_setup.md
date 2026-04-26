# Setup Checklist
## Before the Workshop Begins

**Estimated time:** 20–30 minutes (can be done before the course starts)

---

## Step 1 — Install VS Code

Download and install from **https://code.visualstudio.com**

- Windows: run the `.exe` installer; check "Add to PATH" during setup
- macOS: drag `Visual Studio Code.app` to Applications
- Linux: `sudo snap install --classic code`

Verify: open a terminal and type `code --version`

---

## Step 2 — Install Git

- Windows: https://git-scm.com/download/win (use all defaults; set editor to VS Code)
- macOS: run `git --version` in Terminal — macOS will prompt to install if missing
- Linux: `sudo apt install git` or `sudo dnf install git`

Configure your identity (required for commits):
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global core.editor "code --wait"
git config --global init.defaultBranch main
```

Verify: `git --version`

---

## Step 3 — Install the SAS Extension

1. Open VS Code
2. Press `Ctrl+Shift+X` to open Extensions
3. Search: `SAS`
4. Install **SAS** published by **SAS Institute Inc.** (ID: `SAS.sas-lsp`)

Verify: create a new file named `test.sas`, type `proc print;`, confirm syntax highlighting appears.

---

## Step 4 — Create a GitHub Account

If you do not have one: **https://github.com/join** (free)

---

## Step 5 — Fork the Course Repository

1. Go to: **https://github.com/paulvanmol/sas-vscode-course**
2. Click **Fork** (top right)
3. Owner: select your GitHub username
4. Click **Create fork**

Your fork URL will be: `https://github.com/<your-username>/sas-vscode-course`

---

## Step 6 — Clone Your Fork

**In VS Code:**
1. Press `Ctrl+Shift+P`
2. Type `Git: Clone` → press Enter
3. Paste your fork URL
4. Choose a local folder (e.g., `C:\Projects` or `~/Projects`)
5. Click **Open** when prompted

**Or in a terminal:**
```bash
git clone https://github.com/<your-username>/sas-vscode-course
code sas-vscode-course
```

---

## Step 7 — Install GitHub Copilot (Optional but Recommended)

1. Go to **https://github.com/settings/copilot** → enable Copilot free tier
2. In VS Code Extensions, install:
   - **GitHub Copilot** (GitHub)
   - **GitHub Copilot Chat** (GitHub)
3. Sign in when prompted

**Privacy settings** (recommended):
- Go to `github.com/settings/copilot`
- Uncheck "Allow GitHub to use my code snippets for product improvements"

---

## Verification Checklist

Before the workshop starts, confirm:

- [ ] VS Code opens and shows the course folder in Explorer
- [ ] The SAS extension is installed (SAS icon in Activity Bar)
- [ ] Git is configured (`git config --global user.name` returns your name)
- [ ] The course repository is cloned and open in VS Code
- [ ] You can see the `programs/`, `data/`, `notebooks/` folders in Explorer
- [ ] GitHub Copilot icon is visible in the Status Bar (if installed)

---

## Need Help?

- Installation guide: `appendix/A2_Installation_Guide.md`
- Common problems: `appendix/A4_FAQ.md`
- Ask your instructor

---

*When your checklist is complete, you are ready for Topic 01.*
