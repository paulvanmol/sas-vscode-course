# Demo 03 — Connecting to SAS
## Instructor Demo Script

**Duration:** 15 minutes  
**Connection required:** Yes — demonstrate with the connection type available in the classroom  
**Files used:** A simple test program

---

## Setup Before Demo

- Know which connection type you will demonstrate (Viya recommended if available)
- Have the server URL / hostname ready
- Have credentials ready (do not type passwords on screen — use a pre-configured profile or type quickly)
- Have a backup plan if the connection fails (screenshots or recording)

---

## Demo Steps

### 1. Show the Current State (1 min)

- Point to the SAS indicator in the Status Bar
- "Right now it shows 'No Profile' — we have not set up a connection yet"
- "Let me show you how to add one"

### 2. Open the Profile Wizard (2 min)

- Press `Ctrl+Shift+P`
- Type `SAS: Add New Connection Profile`
- Press Enter
- "The wizard walks you through the setup"

### 3. Name the Profile (1 min)

- Type a descriptive name: `Viya Workshop` (or appropriate for your environment)
- "Use a name that tells you which environment this is — you may have several"

### 4. Select Connection Type (1 min)

- Show the dropdown with all four options
- Select the appropriate type for your demo environment
- Briefly name the other options: "Local for Windows SAS 9.4, IOM for remote Windows server, SSH for Linux server"

### 5. Enter Server Details (2 min)

**For Viya:**
- Enter the endpoint URL
- Select the compute context
- "The compute context determines which server resources run your code"

**For SSH:**
- Enter hostname, port, username
- Show the private key field — "Using a key is more secure than a password"

**For IOM:**
- Enter hostname, port, username

### 6. Show the Profile in Settings (2 min)

- Press `Ctrl+Shift+P` → `Preferences: Open User Settings (JSON)`
- Show the `SAS.profiles` section
- "Notice there is no password here — it is stored in the OS keychain"
- "This file is safe to look at — credentials are not visible"
- Close settings

### 7. Activate the Profile (1 min)

- Click the SAS indicator in the Status Bar
- Select the new profile
- "The Status Bar updates — we are now connected to this environment"

### 8. Test the Connection (2 min)

- Open a new file: `Ctrl+N`
- Type:
  ```sas
  %put Hello from &sysvlong.;
  ```
- Press `F8`
- "Watch the Output panel — the SAS log appears"
- Point to the NOTE with the SAS version string
- "That version string means we are connected and SAS is running"

### 9. Show Profile Switching (2 min)

- If you have a second profile configured, demonstrate switching
- Click the Status Bar → select a different profile
- "One click to switch environments — useful when you work with both Viya and SAS 9.4"

### 10. Show the SAS Panel (1 min)

- Click the SAS icon in the Activity Bar
- Show the Libraries panel populating
- Expand SASHELP — show the datasets
- "These are the libraries available in your current session"

---

## If the Connection Fails

Common issues and quick fixes:
- **Authentication error:** Check username/password, try re-entering credentials
- **Cannot reach server:** Check VPN, check the URL/hostname
- **Compute context error (Viya):** Try `SAS Studio compute context` as the context name

"Connection issues are usually network or credential problems — not VS Code problems. The troubleshooting guide is in `appendix/A4_FAQ.md`."

---

## Transition

"Now configure your own connection. Open `hands-on/03_connection_practice.md` for the steps."
