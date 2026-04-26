# Appendix A2: Installation Guide

This appendix covers the complete installation of all software needed for this course.

---

## A2.1 System Requirements

### Visual Studio Code

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| OS | Windows 10, macOS 10.15, Ubuntu 18.04 | Latest stable release |
| RAM | 1 GB | 4 GB or more |
| Disk | 200 MB for VS Code | 1 GB (for extensions and workspace) |
| CPU | 1.6 GHz | Modern multi-core |

### SAS Extension

| Component | Requirement |
|-----------|------------|
| VS Code | 1.86.0 or later |
| SAS Viya | 3.5 or SAS Viya 4 (any release) |
| SAS 9.4 (Local) | TS1M7 or later, Windows only |
| SAS 9.4 (IOM) | TS1M7 or later; SAS Integration Technologies client |
| SAS 9.4 (SSH) | TS1M7 or later on Linux/Unix |

---

## A2.2 Installing Visual Studio Code

### Windows

1. Go to **https://code.visualstudio.com/download**
2. Click **Windows** to download the installer (`.exe`)
3. Run the installer
4. On the "Select Additional Tasks" screen, check:
   - ✓ Add "Open with Code" action to Windows Explorer file context menu
   - ✓ Add "Open with Code" action to Windows Explorer directory context menu
   - ✓ Add to PATH (important for using `code` command in terminal)
5. Click **Install**, then **Finish**
6. Launch VS Code from the Start menu

### macOS

1. Go to **https://code.visualstudio.com/download**
2. Click **Mac** to download the `.zip` file
3. Open the downloaded `.zip` — it extracts `Visual Studio Code.app`
4. Drag `Visual Studio Code.app` to your **Applications** folder
5. Launch VS Code from Applications or Spotlight
6. To add the `code` command to your terminal:
   - Open VS Code
   - Press `Cmd+Shift+P`
   - Type `Shell Command: Install 'code' command in PATH`
   - Press Enter

### Linux (Ubuntu/Debian)

```bash
# Install via snap (recommended)
sudo snap install --classic code

# Or install via apt
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
sudo apt update
sudo apt install code
```

---

## A2.3 Installing the SAS Extension

1. Open VS Code
2. Click the **Extensions** icon in the Activity Bar (`Ctrl+Shift+X`)
3. In the search box, type: `SAS`
4. Find **SAS** published by **SAS Institute Inc.** (extension ID: `SAS.sas-lsp`)
5. Click **Install**
6. Wait for the installation to complete (no restart required)

**Verify the installation:**
- Create a new file with a `.sas` extension
- Type `proc print data=sashelp.class; run;`
- Confirm that `proc`, `print`, `data`, and `run` are highlighted in different colors

---

## A2.4 Installing Git

### Windows

1. Go to **https://git-scm.com/download/win**
2. Download the installer
3. Run the installer with these recommended settings:
   - Default editor: Visual Studio Code (select from dropdown)
   - Initial branch name: `main`
   - PATH environment: "Git from the command line and also from 3rd-party software"
   - HTTPS transport backend: OpenSSL
   - Line ending conversions: "Checkout Windows-style, commit Unix-style line endings"
   - All other options: defaults
4. Click **Install**

### macOS

macOS includes Git via Xcode Command Line Tools. To install or update:

```bash
# Check if Git is installed
git --version

# If not installed, macOS will prompt you to install Xcode Command Line Tools
# Or install via Homebrew for the latest version:
brew install git
```

### Linux

```bash
# Ubuntu/Debian
sudo apt install git

# Fedora/RHEL
sudo dnf install git
```

**Configure Git after installation:**

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your.email@example.com"
git config --global core.editor "code --wait"
git config --global init.defaultBranch main
```

---

## A2.5 Installing GitHub Copilot

### Prerequisites
- A GitHub account (free at https://github.com)
- GitHub Copilot enabled on your account (https://github.com/settings/copilot)

### Installation

1. Open the Extensions panel in VS Code (`Ctrl+Shift+X`)
2. Search for `GitHub Copilot`
3. Install **GitHub Copilot** (publisher: GitHub, ID: `GitHub.copilot`)
4. Install **GitHub Copilot Chat** (publisher: GitHub, ID: `GitHub.copilot-chat`)
5. After installation, VS Code shows a sign-in prompt
6. Click **Sign in to GitHub**
7. A browser window opens — authorize VS Code to access your GitHub account
8. Return to VS Code — Copilot is now active

**Verify:** The Copilot icon appears in the Status Bar (bottom right). A checkmark means it is active.

---

## A2.6 Installing SAS Viya Copilot (Optional)

### Prerequisites
- SAS Extension for VS Code 1.14.0 or later (installed above)
- A SAS Viya 4 connection profile configured (see Appendix A3)
- SAS Viya 4 deployment at release 2025.05 or later
- SAS administrator has configured the GenAI Gateway credentials

### Installation

1. Open the Extensions panel (`Ctrl+Shift+X`)
2. Search for `SAS Viya Copilot`
3. Install the extension published by **SAS Institute Inc.** (ID: `SAS.sas-viya-copilot`)
4. No additional sign-in is required — it uses your existing SAS Viya connection

### Administrator Setup (for SAS Administrators)

The SAS Viya Copilot requires a one-time setup by a SAS administrator:

1. Obtain an API key and secret from the SAS API Portal
2. In SAS Viya, navigate to **Environment Manager > Credentials**
3. Create a new credential with the API key and secret
4. Assign the credential to the appropriate users or groups

Refer to the official documentation at **https://sassoftware.github.io/sas-copilot** for detailed administrator setup instructions.

---

## A2.7 Installing SAS Integration Technologies Client (for IOM connections)

If you are connecting to a remote SAS 9.4 server via IOM, you need the SAS Integration Technologies client on your local machine.

1. Contact your SAS administrator or download from the SAS Software Depot
2. Run the SAS Deployment Wizard
3. Select **SAS Integration Technologies Client** from the product list
4. Complete the installation
5. Verify by checking that `C:\Program Files\SASHome\SASFoundation\9.4\` contains the IOM client files

---

## A2.8 Verifying Your Complete Setup

Run through this checklist after installation:

- [ ] VS Code opens and the interface loads correctly
- [ ] The SAS extension is installed (SAS icon visible in Activity Bar)
- [ ] Git is installed (`git --version` returns a version number in the terminal)
- [ ] GitHub account is connected (File > Preferences > Accounts shows your GitHub username)
- [ ] GitHub Copilot is active (Copilot icon in Status Bar shows a checkmark)
- [ ] A SAS connection profile is configured (Status Bar shows a profile name)
- [ ] Test connection works (`%put Hello;` runs and shows output)

---

## A2.9 Updating Extensions

VS Code checks for extension updates automatically. To update manually:

1. Open the Extensions panel
2. Click the **...** menu at the top
3. Select **Check for Extension Updates**
4. Install any available updates

Keep the SAS extension updated — new releases add features and fix bugs. Check the [release notes](https://github.com/sassoftware/vscode-sas-extension/releases) to see what changed.

---

*← Appendix A1: Capabilities by Connection Type | Appendix A3: Configuring the Extension →*
