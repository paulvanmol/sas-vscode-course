# Appendix A4: Frequently Asked Questions

---

## Installation & Setup

**Q: I installed the SAS extension but I do not see the SAS icon in the Activity Bar.**

A: Try reloading VS Code: `Ctrl+Shift+P` → `Developer: Reload Window`. If the icon still does not appear, check that the extension is enabled in the Extensions panel (it should not show a "Disable" button if it is already enabled).

---

**Q: VS Code says "Git not found" when I try to use Source Control.**

A: Git is not installed or not on your PATH. Install Git from https://git-scm.com and restart VS Code. On Windows, make sure you selected "Git from the command line and also from 3rd-party software" during installation.

---

**Q: I cannot install extensions because my organization blocks the VS Code Marketplace.**

A: Ask your IT department for the `.vsix` extension file. Extensions can be installed from a file: Extensions panel → **...** → **Install from VSIX**. The SAS extension `.vsix` is available from the GitHub releases page: https://github.com/sassoftware/vscode-sas-extension/releases

---

## Connections

**Q: I get "Authentication failed" when connecting to SAS Viya.**

A: Check:
1. The endpoint URL is correct (include `https://` and no trailing slash)
2. Your username and password are correct
3. Your account has access to the compute context you specified
4. Your VPN is connected if the Viya server is on a corporate network

---

**Q: I get "Cannot connect to SAS 9.4 via IOM" — what do I check?**

A: Check:
1. SAS Integration Technologies client is installed on your local machine
2. The hostname and port (default 8591) are correct
3. The SAS Object Spawner is running on the server
4. Your firewall allows outbound connections on port 8591
5. Your username has permission to connect to the SAS server

---

**Q: My SSH connection asks for a password every time. How do I use a key instead?**

A: Generate an SSH key pair and copy the public key to the server:
```bash
# Generate a key (run on your local machine)
ssh-keygen -t ed25519 -C "your.email@company.com"

# Copy the public key to the server
ssh-copy-id username@your-sas-server.com
```
Then in your VS Code profile, set `privateKeyFilePath` to `~/.ssh/id_ed25519`.

---

**Q: I have multiple SAS environments. Can I have multiple profiles?**

A: Yes. Create as many profiles as you need using `SAS: Add New Connection Profile`. Switch between them by clicking the SAS indicator in the Status Bar.

---

**Q: Where are my connection profiles stored? Are they safe?**

A: Profiles (without passwords) are stored in your VS Code user `settings.json`. Passwords are stored in your operating system's secure credential store (Windows Credential Manager, macOS Keychain, or Linux libsecret). They are never stored in plain text in `settings.json` and are never committed to Git.

---

## Running Code

**Q: I press F8 but nothing happens.**

A: Check:
1. A SAS connection profile is active (Status Bar shows a profile name, not "No Profile")
2. The active file is a `.sas` file (check the language indicator in the Status Bar)
3. The SAS extension is enabled

---

**Q: My code runs but I get "File not found" errors for my data files.**

A: When running on a remote server (Viya, IOM, or SSH), file paths must be valid **on the server**, not on your local machine. Replace local paths like `C:\Users\me\data\` with server paths like `/shared/data/` or `/home/username/data/`.

---

**Q: The SAS log shows WARNING: Apparent symbolic reference X not resolved.**

A: A macro variable `&X` is referenced but was never defined. Check:
1. The `%LET` statement that defines `&X` ran before the code that uses it
2. The variable name is spelled correctly (macro variables are case-insensitive but check for typos)
3. The variable is in scope (not defined inside a macro that has already ended)

---

**Q: How do I run just one PROC step from a large program?**

A: Select the lines of the PROC step (from `PROC` to `RUN;` or `QUIT;`) and press `F8`. Only the selected code runs.

---

## Notebooks

**Q: I created a SAS Notebook but the cells show "No kernel" or will not run.**

A: Make sure a SAS connection profile is active. Notebooks use the same connection as regular `.sas` files. Click the SAS indicator in the Status Bar and select a profile.

---

**Q: Python cells in my notebook show an error.**

A: Python cells require SAS Viya with Python integration configured. They are not supported for SAS 9.4 connections. Check with your SAS administrator that the Python integration service is available on your Viya environment.

---

**Q: My notebook file is very large after running. How do I reduce the size?**

A: Click **Clear All Outputs** in the notebook toolbar before saving. This removes all output from the file. The code is preserved; only the results are cleared.

---

## Git

**Q: VS Code asks me to authenticate with GitHub every time I push.**

A: Set up a GitHub personal access token or use the GitHub extension for persistent authentication. In VS Code, go to **File > Preferences > Accounts** and sign in with your GitHub account — this stores credentials securely.

---

**Q: I accidentally committed a file I should not have (e.g., a file with a password).**

A: 
1. Remove the file from tracking: `git rm --cached filename`
2. Add it to `.gitignore`
3. Commit the removal
4. If the file was already pushed to GitHub, the sensitive data is in the history. You should rotate any credentials that were exposed and consider using `git filter-branch` or BFG Repo Cleaner to remove it from history. Contact your security team if credentials were exposed.

---

**Q: I get "Your branch is behind 'origin/main'" — what does this mean?**

A: Someone else pushed commits to the remote repository (or you pushed from another machine) and your local copy is out of date. Pull the changes: Source Control panel → **...** → **Pull**.

---

**Q: What is the difference between `git pull` and `git fetch`?**

A: `git fetch` downloads changes from the remote but does not apply them to your working files. `git pull` fetches AND merges the changes into your current branch. For most daily use, `git pull` (or the VS Code sync button) is what you want.

---

## GitHub Copilot

**Q: Copilot is not showing suggestions in my SAS files.**

A: Check:
1. GitHub Copilot is installed and you are signed in (Copilot icon in Status Bar)
2. Copilot is enabled for SAS files: click the Copilot icon → check that it is not disabled for the current language
3. You have not exceeded your free tier monthly limit

---

**Q: Copilot generated SAS code that looks wrong. What should I do?**

A: Do not use it. AI-generated code must always be reviewed. If the code is wrong:
1. Try a more specific prompt
2. Ask Copilot Chat to explain what the code does — this often reveals the error
3. Fix the code manually
4. Ask Copilot to fix the specific part that is wrong

---

**Q: Can Copilot access my SAS data or server?**

A: No. Copilot only sees the code you type in the editor and what you paste into the chat. It does not have access to your SAS server, your data, or your SAS log unless you explicitly paste that content into the chat.

---

**Q: My organization does not allow GitHub Copilot. What are my alternatives?**

A: 
- **SAS Viya Copilot** — if you are on Viya 2025.05+, this is a SAS-managed AI that does not use GitHub
- **Local LLMs** — extensions like Continue.dev can connect to locally-hosted language models
- **No AI** — VS Code's built-in features (IntelliSense, snippets, hover help) still provide significant productivity benefits without AI

---

## SAS Viya Copilot

**Q: I installed SAS Viya Copilot but the right-click menu does not show the Copilot commands.**

A: Check:
1. You are connected to a SAS Viya profile (not SAS 9.4)
2. Your Viya environment is version 2025.05 or later
3. Your SAS administrator has configured the GenAI Gateway credentials
4. The SAS Viya Copilot extension is enabled (not just installed)

---

**Q: What is the GenAI Gateway and why does my administrator need to set it up?**

A: The GenAI Gateway is a SAS service that provides access to the AI model used by SAS Viya Copilot. It requires an API key from the SAS API Portal. This is a one-time setup by a SAS administrator — individual users do not need to configure it themselves.

---

## General

**Q: VS Code is slow or using a lot of memory. What can I do?**

A: 
1. Close unused editor tabs
2. Disable extensions you are not using (Extensions panel → right-click → Disable)
3. Increase VS Code's memory limit: add `"files.watcherExclude"` to settings to exclude large folders like `output/` and `data/`
4. Restart VS Code periodically

---

**Q: Can I use VS Code with SAS on a Chromebook or iPad?**

A: VS Code has a browser-based version (vscode.dev) that works on any device with a modern browser. However, the SAS extension's full functionality (running code, Git integration) requires the desktop version. For Chromebooks, consider using VS Code in a Linux container (Crostini).

---

**Q: Is there a way to use VS Code without installing it locally?**

A: Yes — GitHub Codespaces provides a cloud-hosted VS Code environment accessible from any browser. The SAS extension can be installed in a Codespace, but you still need network access to your SAS server.

---

*For issues not covered here, visit the SAS Communities: https://communities.sas.com*  
*Or open a GitHub issue: https://github.com/sassoftware/vscode-sas-extension/issues*
