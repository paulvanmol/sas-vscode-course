# Topic 03 — Connecting to SAS
## Slide Outline

**Timing:** 15 min slides + 15 min demo + 20 min practice  
**Goal:** Participants can configure a connection profile for their SAS environment and verify the connection works.

---

### Slide 1 — Connection Types Overview

The SAS Extension supports four ways to connect to SAS:

| Type | Platform | Typical use |
|------|----------|------------|
| **SAS Viya** | Cloud / on-premises | SAS Viya 3.5 or Viya 4 |
| **SAS 9.4 Local** | Windows only | SAS installed on your laptop |
| **SAS 9.4 Remote — IOM** | Windows server | Corporate SAS 9.4 server |
| **SAS 9.4 Remote — SSH** | Linux/Unix server | Linux-based SAS 9.4 |

"You can have all four configured at the same time and switch between them with one click."

---

### Slide 2 — What Is a Connection Profile?

A **profile** stores the details of one SAS environment:
- Server address
- Connection type
- Username
- Compute context (Viya) or SAS path (9.4)

Profiles are stored in your **user settings** — not in the workspace folder, so they never get committed to Git.

You can have as many profiles as you have SAS environments.

---

### Slide 3 — Creating a Profile

Two ways to create a profile:

**Option A — Command Palette:**  
`Ctrl+Shift+P` → `SAS: Add New Connection Profile`

**Option B — Status Bar:**  
Click the SAS indicator at the bottom → **Add New Connection Profile**

The wizard asks:
1. Profile name (you choose — e.g., "Viya Production")
2. Connection type
3. Server details (URL, host, port)
4. Authentication details

---

### Slide 4 — SAS Viya Profile

*Show the profile wizard for Viya.*

Key settings:
- **Connection type:** SAS Viya (REST)
- **Endpoint:** `https://your-viya-server.company.com`
- **Compute context:** `SAS Studio compute context` (default)

Authentication options:
- Username + password (simplest)
- OAuth token
- Azure Active Directory (for Azure-hosted Viya)

"The compute context determines which server resources run your code. Ask your SAS administrator if you are unsure which to use."

---

### Slide 5 — SAS 9.4 Local Profile

*Show the profile wizard for local SAS.*

Key settings:
- **Connection type:** SAS 9.4 (Local)
- **SAS executable path:** `C:\Program Files\SASHome\SASFoundation\9.4\sas.exe`

**Windows only.** If you are on macOS or Linux, use the SSH connection type to connect to a remote SAS 9.4 server.

---

### Slide 6 — SAS 9.4 Remote IOM Profile

*Show the profile wizard for IOM.*

Key settings:
- **Connection type:** SAS 9.4 (Remote — IOM)
- **Host:** `sas94.company.com`
- **Port:** 8591 (default Object Spawner port)
- **Username:** your SAS server username

Requires: SAS Integration Technologies client installed locally.

"IOM is the traditional way to connect to a Windows-based SAS 9.4 server. It uses the same protocol as SAS Enterprise Guide."

---

### Slide 7 — SAS 9.4 Remote SSH Profile

*Show the profile wizard for SSH.*

Key settings:
- **Connection type:** SAS 9.4 (Remote — SSH)
- **Host:** `saslinux.company.com`
- **Port:** 22 (default SSH port)
- **Username:** your Linux username
- **SAS path:** `/opt/sas/SASFoundation/9.4/sas`
- **Private key:** `~/.ssh/id_ed25519` (optional but recommended)

"SSH is the standard way to connect to a Linux-based SAS 9.4 server. If you can SSH to the server from your terminal, you can connect from VS Code."

---

### Slide 8 — Switching Profiles

Once profiles are configured:

1. Click the SAS indicator in the **Status Bar**
2. A picker shows all profiles
3. Click the one you want

The Status Bar updates immediately. The next run uses the new connection.

*Show screenshot of the profile picker.*

---

### Slide 9 — Security: Where Are Credentials Stored?

Passwords are stored in VS Code's **secret storage**:
- Windows: Windows Credential Manager
- macOS: Keychain
- Linux: libsecret / GNOME Keyring

They are **not** stored in `settings.json` and are **never** committed to Git.

"Never paste a password directly into settings.json. Always use the profile wizard — it stores credentials securely."

---

### Slide 10 — Testing Your Connection

After setting up a profile:

1. Make sure the profile is active (check Status Bar)
2. Open any `.sas` file
3. Type:
   ```sas
   %put Hello from &sysvlong.;
   ```
4. Press `F8`
5. Check the Output panel for the SAS version string

If you see the version, you are connected. If you see an error, check the troubleshooting section in `appendix/A4_FAQ.md`.

---

### Slide 11 — Activity: Connection Type Quiz

**Quick poll (2 minutes):**

Match the scenario to the connection type:

| Scenario | Connection type? |
|----------|----------------|
| SAS 9.4 on your Windows laptop | ? |
| SAS Viya in the cloud | ? |
| SAS 9.4 on a Linux server, accessed via terminal | ? |
| SAS 9.4 on a Windows server, same as SAS EG uses | ? |

*Answers: Local, Viya, SSH, IOM*

*Transition to demo.*
