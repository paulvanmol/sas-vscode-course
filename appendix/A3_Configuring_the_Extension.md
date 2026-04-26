# Appendix A3: Configuring the SAS Extension

This appendix is a complete reference for all SAS extension settings and configuration options.

---

## A3.1 Where Settings Are Stored

VS Code has three levels of settings:

| Level | Location | Scope |
|-------|----------|-------|
| **User settings** | `~/.config/Code/User/settings.json` (Linux/macOS) or `%APPDATA%\Code\User\settings.json` (Windows) | Applies to all workspaces |
| **Workspace settings** | `.vscode/settings.json` in your project folder | Applies only to this workspace |
| **Profile settings** | Stored in user settings under `SAS.profiles` | Connection credentials |

**Rule of thumb:**
- Put connection profiles in **user settings** (they contain credentials)
- Put code style preferences in **workspace settings** (they are project-specific)
- Never commit credentials to Git

---

## A3.2 Opening Settings

**GUI settings editor:**
- Press `Ctrl+,` (Windows/Linux) or `Cmd+,` (macOS)
- Search for `SAS` to filter SAS-specific settings

**JSON settings editor:**
- Press `Ctrl+Shift+P` → `Preferences: Open User Settings (JSON)`
- Or click the `{}` icon in the top-right of the settings editor

---

## A3.3 Connection Profile Reference

All profiles are stored under the `SAS.profiles` key in user settings.

### SAS Viya Profile

```json
"SAS.profiles": {
  "My Viya Server": {
    "connectionType": "rest",
    "endpoint": "https://your-viya-server.company.com",
    "context": "SAS Studio compute context"
  }
}
```

| Property | Required | Description |
|----------|----------|-------------|
| `connectionType` | Yes | Must be `"rest"` for SAS Viya |
| `endpoint` | Yes | Full URL of your SAS Viya server |
| `context` | No | Compute context name (default: `"SAS Studio compute context"`) |

### SAS 9.4 Local Profile

```json
"SAS.profiles": {
  "Local SAS 9.4": {
    "connectionType": "com",
    "host": "localhost"
  }
}
```

| Property | Required | Description |
|----------|----------|-------------|
| `connectionType` | Yes | Must be `"com"` for local SAS 9.4 |
| `host` | Yes | Must be `"localhost"` |
| `sasOptions` | No | Array of SAS system options (e.g., `["-MEMSIZE 4G"]`) |

### SAS 9.4 Remote IOM Profile

```json
"SAS.profiles": {
  "Remote SAS 9.4 IOM": {
    "connectionType": "iom",
    "host": "sas94.company.com",
    "port": 8591,
    "username": "your_username",
    "saspath": "/SASFoundation/9.4"
  }
}
```

| Property | Required | Description |
|----------|----------|-------------|
| `connectionType` | Yes | Must be `"iom"` |
| `host` | Yes | Hostname or IP of the SAS server |
| `port` | Yes | Object Spawner port (default: 8591) |
| `username` | Yes | SAS server username |
| `saspath` | No | Path to SAS on the server |

> **Password storage:** Passwords are stored in VS Code's secret storage (OS keychain), not in `settings.json`. You are prompted for the password on first connection.

### SAS 9.4 Remote SSH Profile

```json
"SAS.profiles": {
  "Remote SAS 9.4 SSH": {
    "connectionType": "ssh",
    "host": "saslinux.company.com",
    "port": 22,
    "username": "your_username",
    "saspath": "/opt/sas/SASFoundation/9.4/sas",
    "privateKeyFilePath": "~/.ssh/id_ed25519"
  }
}
```

| Property | Required | Description |
|----------|----------|-------------|
| `connectionType` | Yes | Must be `"ssh"` |
| `host` | Yes | Hostname or IP of the Linux/Unix server |
| `port` | No | SSH port (default: 22) |
| `username` | Yes | Linux/Unix username |
| `saspath` | Yes | Full path to the SAS executable on the server |
| `privateKeyFilePath` | No | Path to SSH private key file (omit to use password auth) |

---

## A3.4 Setting the Active Profile

**From the Status Bar:**
1. Click the SAS connection indicator in the Status Bar
2. Select a profile from the list

**From settings:**
```json
"SAS.connectionProfiles": {
  "activeProfile": "My Viya Server"
}
```

---

## A3.5 Autoexec Configuration

Autoexec statements run automatically at the start of each SAS session, before your code.

**In settings (applies to all profiles):**
```json
"SAS.session.autoExec": [
  {
    "line": "libname mydata '/shared/data';"
  },
  {
    "line": "options mprint mlogic symbolgen;"
  }
]
```

**Per-profile autoexec** (add to the profile definition):
```json
"SAS.profiles": {
  "My Viya Server": {
    "connectionType": "rest",
    "endpoint": "https://your-viya-server.company.com",
    "autoExec": [
      { "line": "libname mydata '/shared/data';" }
    ]
  }
}
```

---

## A3.6 SAS System Options

For connection types that support startup options (SSH and Local):

```json
"SAS.profiles": {
  "Remote SAS 9.4 SSH": {
    "connectionType": "ssh",
    "host": "saslinux.company.com",
    "username": "your_username",
    "saspath": "/opt/sas/SASFoundation/9.4/sas",
    "sasOptions": [
      "-MEMSIZE 8G",
      "-WORK /tmp/saswork",
      "-NOOVP"
    ]
  }
}
```

---

## A3.7 Editor Settings for SAS

These settings improve the editing experience for SAS files. Add them to your workspace `.vscode/settings.json`:

```json
{
  // SAS file associations
  "files.associations": {
    "*.sas": "sas",
    "*.sasnb": "sas-notebook"
  },

  // Indentation
  "editor.tabSize": 4,
  "editor.insertSpaces": true,

  // Format on save
  "editor.formatOnSave": true,

  // Rulers at 80 and 120 characters
  "editor.rulers": [80, 120],

  // Word wrap off (SAS lines can be long)
  "editor.wordWrap": "off",

  // Show whitespace characters
  "editor.renderWhitespace": "boundary",

  // Trim trailing whitespace on save
  "files.trimTrailingWhitespace": true,

  // Ensure files end with a newline
  "files.insertFinalNewline": true
}
```

---

## A3.8 Recommended Workspace Settings File

The starter repository includes a `.vscode/settings.json`. Here is the complete recommended file for SAS projects:

```json
{
  "files.associations": {
    "*.sas": "sas"
  },
  "editor.tabSize": 4,
  "editor.insertSpaces": true,
  "editor.formatOnSave": true,
  "editor.rulers": [80, 120],
  "editor.wordWrap": "off",
  "files.trimTrailingWhitespace": true,
  "files.insertFinalNewline": true,
  "files.exclude": {
    "**/*.log": true,
    "**/*.lst": true
  },
  "search.exclude": {
    "**/*.log": true,
    "**/*.lst": true,
    "**/output/**": true
  }
}
```

The `files.exclude` and `search.exclude` settings hide SAS log and listing files from the Explorer and search results, keeping the workspace clean.

---

## A3.9 Keyboard Shortcuts for SAS

You can customize keyboard shortcuts in VS Code. The SAS extension adds these commands:

| Command | Default Shortcut | Description |
|---------|-----------------|-------------|
| `SAS.run` | `F8` | Run current file or selection |
| `SAS.cancel` | — | Cancel running job |
| `SAS.switchProfile` | — | Switch connection profile |
| `SAS.addProfile` | — | Add new connection profile |
| `SAS.deleteProfile` | — | Delete a connection profile |

To customize shortcuts:
1. Press `Ctrl+K Ctrl+S` to open the Keyboard Shortcuts editor
2. Search for `SAS` to find all SAS commands
3. Click the pencil icon next to any command to assign a shortcut

---

## A3.10 Proxy Configuration

If your organization uses a network proxy, configure it in VS Code:

```json
"http.proxy": "http://proxy.company.com:8080",
"http.proxyStrictSSL": false
```

For SAS Viya connections through a proxy, the proxy settings apply automatically.

---

## A3.11 Trusted Workspaces

VS Code has a workspace trust feature. When you open a folder for the first time, VS Code may ask if you trust it. For your own project folders, click **Yes, I trust the authors**.

For folders received from others, review the contents before trusting.

---

## A3.12 Complete Example: settings.json with Multiple Profiles

```json
{
  // Active profile
  "SAS.connectionProfiles": {
    "activeProfile": "Viya Production"
  },

  // Connection profiles
  "SAS.profiles": {
    "Viya Production": {
      "connectionType": "rest",
      "endpoint": "https://viya.company.com",
      "context": "SAS Studio compute context"
    },
    "Viya Development": {
      "connectionType": "rest",
      "endpoint": "https://viya-dev.company.com",
      "context": "SAS Studio compute context"
    },
    "SAS 9.4 Local": {
      "connectionType": "com",
      "host": "localhost"
    },
    "SAS 9.4 Linux": {
      "connectionType": "ssh",
      "host": "saslinux.company.com",
      "port": 22,
      "username": "pvanmol",
      "saspath": "/opt/sas/SASFoundation/9.4/sas",
      "privateKeyFilePath": "~/.ssh/id_ed25519"
    }
  },

  // Autoexec for all sessions
  "SAS.session.autoExec": [
    { "line": "options mprint;" }
  ]
}
```

---

*← Appendix A2: Installation Guide | Appendix A4: FAQ →*
