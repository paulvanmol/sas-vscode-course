# Appendix A1: Capabilities by Connection Type

This appendix provides a complete feature matrix showing which capabilities are available for each SAS connection type.

---

## Connection Type Summary

| Connection Type | Platform | Use Case |
|----------------|----------|---------|
| **SAS Viya** | Cloud / On-premises | SAS Viya 3.5 or SAS Viya 4 |
| **SAS 9.4 (Local)** | Windows only | SAS 9.4 installed on your machine |
| **SAS 9.4 (Remote — IOM)** | Windows server | Remote SAS 9.4 via Integration Technologies |
| **SAS 9.4 (Remote — SSH)** | Linux/Unix server | Remote SAS 9.4 via SSH |

---

## Feature Matrix

### Code Execution

| Feature | SAS Viya | SAS 9.4 Local | SAS 9.4 IOM | SAS 9.4 SSH |
|---------|----------|---------------|-------------|-------------|
| Run entire `.sas` file | ✓ | ✓ | ✓ | ✓ |
| Run selected code | ✓ | ✓ | ✓ | ✓ |
| Cancel running job | ✓ | ✓ | ✓ | ✓ |
| Persistent session between runs | ✓ | ✓ | ✓ | ✓ |
| Real-time log streaming | ✓ | ✓ | ✓ | ✓ |
| HTML results viewer | ✓ | ✓ | ✓ | ✓ |
| Download results | ✓ | ✓ | ✓ | ✓ |

### Notebooks

| Feature | SAS Viya | SAS 9.4 Local | SAS 9.4 IOM | SAS 9.4 SSH |
|---------|----------|---------------|-------------|-------------|
| SAS cells | ✓ | ✓ | ✓ | ✓ |
| SQL cells | ✓ | ✓ | ✓ | ✓ |
| Python cells | ✓ | — | — | — |
| R cells | ✓ | — | — | — |
| Markdown cells | ✓ | ✓ | ✓ | ✓ |
| Convert notebook to Flow | ✓ | — | — | — |

### Content and Libraries

| Feature | SAS Viya | SAS 9.4 Local | SAS 9.4 IOM | SAS 9.4 SSH |
|---------|----------|---------------|-------------|-------------|
| SAS Content panel (server files) | ✓ | — | — | — |
| Libraries panel | ✓ | ✓ | ✓ | ✓ |
| Table viewer | ✓ | ✓ | ✓ | ✓ |
| Download table as CSV/XLSX | ✓ | ✓ | ✓ | ✓ |
| Upload file to server | ✓ | — | — | — |
| Create/delete server folders | ✓ | — | — | — |

### Code Intelligence

| Feature | SAS Viya | SAS 9.4 Local | SAS 9.4 IOM | SAS 9.4 SSH |
|---------|----------|---------------|-------------|-------------|
| Syntax highlighting | ✓ | ✓ | ✓ | ✓ |
| Code completion (IntelliSense) | ✓ | ✓ | ✓ | ✓ |
| Hover help | ✓ | ✓ | ✓ | ✓ |
| Code folding | ✓ | ✓ | ✓ | ✓ |
| Outline view | ✓ | ✓ | ✓ | ✓ |
| Code snippets | ✓ | ✓ | ✓ | ✓ |
| Code formatting | ✓ | ✓ | ✓ | ✓ |
| Problems panel (static analysis) | ✓ | ✓ | ✓ | ✓ |
| Dataset name completion (from active session) | ✓ | ✓ | ✓ | ✓ |

### Session Configuration

| Feature | SAS Viya | SAS 9.4 Local | SAS 9.4 IOM | SAS 9.4 SSH |
|---------|----------|---------------|-------------|-------------|
| Autoexec statements | ✓ | ✓ | ✓ | ✓ |
| SAS system options | ✓ | — * | — * | ✓ |
| Compute context selection (Viya) | ✓ | — | — | — |
| Multiple connection profiles | ✓ | ✓ | ✓ | ✓ |

*\* Options that can only be specified at SAS session startup are not supported for SAS 9.4 Local and IOM connections.*

### AI Assistance

| Feature | SAS Viya | SAS 9.4 Local | SAS 9.4 IOM | SAS 9.4 SSH |
|---------|----------|---------------|-------------|-------------|
| GitHub Copilot (inline) | ✓ | ✓ | ✓ | ✓ |
| GitHub Copilot Chat | ✓ | ✓ | ✓ | ✓ |
| SAS Viya Copilot | ✓ (2025.05+) | — | — | — |

---

## Connection Type Details

### SAS Viya

**Authentication options:**
- Username and password
- OAuth token
- Azure Active Directory (for Viya deployments on Azure)

**Compute context:**  
When running code on Viya, you select a compute context that determines server resources. Common contexts:
- `SAS Studio compute context` — standard interactive use
- Custom contexts configured by your SAS administrator

**Session behavior:**  
The compute session persists between code runs. Libraries defined in one run are available in the next. The session ends when you disconnect or it times out (configurable by the Viya administrator).

---

### SAS 9.4 (Local)

**Platform:** Windows only

**Requirements:**
- SAS 9.4 TS1M7 or later installed locally
- SAS Foundation must be licensed

**Session behavior:**  
A new SAS process starts for each run by default. You can configure the extension to reuse the session.

**Limitations:**
- Not available on macOS or Linux
- Python and R notebook cells not supported
- SAS Content panel not available (no Viya server)

---

### SAS 9.4 (Remote — IOM)

**Platform:** Connects to a Windows SAS server

**Requirements:**
- SAS Integration Technologies client installed on your local machine
- Network access to the SAS Object Spawner (default port: 8591)
- SAS 9.4 TS1M7 or later on the server

**File paths:**  
All file paths in your SAS code must be valid on the **server**, not your local machine. Use UNC paths or server-side paths.

**Limitations:**
- Some SAS system options cannot be set (those requiring session startup)
- Python and R notebook cells not supported

---

### SAS 9.4 (Remote — SSH)

**Platform:** Connects to a Linux/Unix SAS server

**Requirements:**
- SSH client (built into macOS/Linux; OpenSSH on Windows 10+)
- Network access to the server's SSH port (default: 22)
- SAS 9.4 installed on the Linux/Unix server
- A user account on the server

**Authentication:**
- Password (prompted at connection)
- SSH private key (recommended for security and convenience)

**File paths:**  
All file paths must be valid Linux/Unix paths on the server (e.g., `/home/username/data/`).

**Limitations:**
- Python and R notebook cells not supported
- SAS Content panel not available

---

## Choosing the Right Connection Type

```
Do you have SAS Viya?
  YES → Use SAS Viya connection
        (most features, Python/R notebooks, SAS Viya Copilot)
  
  NO → Is SAS 9.4 installed on your local Windows machine?
         YES → Use SAS 9.4 (Local)
               (simple setup, no network required)
         
         NO → Is the remote SAS server running Windows?
                YES → Use SAS 9.4 (Remote — IOM)
                      (requires SAS Integration Technologies client)
                
                NO (Linux/Unix server) → Use SAS 9.4 (Remote — SSH)
                      (requires SSH access to the server)
```

---

*← Module 9: AI-Assisted Coding | Appendix A2: Installation Guide →*
