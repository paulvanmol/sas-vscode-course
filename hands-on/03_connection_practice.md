# Practice 03 — Connecting to SAS
## Hands-On Exercise

**Estimated time:** 20 minutes  
**Objective:** Configure a connection profile for your SAS environment and verify it works.

---

## Before You Start

Know the following for your SAS environment:

**For SAS Viya:**
- Server URL (e.g., `https://viya.company.com`)
- Your username and password
- Compute context name (ask your instructor if unsure — default is `SAS Studio compute context`)

**For SAS 9.4 Local:**
- Path to `sas.exe` (usually `C:\Program Files\SASHome\SASFoundation\9.4\sas.exe`)

**For SAS 9.4 Remote IOM:**
- Server hostname or IP
- Port (usually 8591)
- Your username and password

**For SAS 9.4 Remote SSH:**
- Server hostname or IP
- Your Linux username
- Path to SAS on the server (ask your instructor)

---

## Exercise 3.1 — Create a Connection Profile (10 min)

1. Press `Ctrl+Shift+P`
2. Type `SAS: Add New Connection Profile` → press Enter
3. Enter a profile name that describes your environment  
   (e.g., `Workshop Viya`, `My SAS 9.4`, `Linux SAS Server`)
4. Select the connection type for your environment
5. Fill in the server details
6. Enter your credentials when prompted

> **Tip:** If you are unsure which connection type to use, ask your instructor.

---

## Exercise 3.2 — Activate the Profile (2 min)

1. Look at the Status Bar at the bottom of VS Code
2. Click the SAS connection indicator
3. Select the profile you just created
4. The Status Bar should now show your profile name

---

## Exercise 3.3 — Test the Connection (5 min)

1. Open a new file: `Ctrl+N`
2. Save it as `programs/connection_test.sas`
3. Type:
   ```sas
   /* Connection test */
   %put NOTE: Connected to SAS version &sysvlong.;
   %put NOTE: Current date/time: %sysfunc(datetime(), datetime20.);
   %put NOTE: SAS work directory: &sasworkloc.;
   ```
4. Press `F8` to run
5. Open the Output panel — you should see the SAS log

> **Success:** You see the SAS version string in the log  
> **Failure:** You see an error — check `appendix/A4_FAQ.md` for troubleshooting

---

## Exercise 3.4 — Explore the Settings (3 min)

1. Press `Ctrl+Shift+P` → `Preferences: Open User Settings (JSON)`
2. Find the `SAS.profiles` section
3. Look at your profile — notice the password is NOT stored here
4. Close the settings file

> **Question:** Where is your password actually stored?

---

## Bonus — Add a Second Profile

If you have access to a second SAS environment (or if your instructor provides a shared Viya URL):

1. Add a second connection profile
2. Switch between the two profiles using the Status Bar
3. Run the connection test on both

> **Question:** What changes in the log output between the two connections?

---

## Summary

After this exercise you should be able to:
- Create a connection profile for your SAS environment
- Activate a profile from the Status Bar
- Verify a connection with a simple test program
- Understand where credentials are stored

*When done, move on to Topic 04.*
