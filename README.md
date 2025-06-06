# it-support-toolkit

A collection of helpful shell and PowerShell scripts for resolving everyday IT issues.  
Includes tools for DNS flushing, task management, system cleanup, and printer troubleshooting.  
Created to support remote and onsite tech operations efficiently.

---

## 🚀 Scripts Included

### 🧹 `flush-dns.sh`  
Flushes the DNS cache to resolve network connectivity problems.

### 🧼 `cleanup-temp.sh`  
Deletes temporary files to improve system performance.

### ❌ `kill-task.sh`  
Kills unresponsive processes using name or PID.

### 🖨️ `printer-fix.ps1`  
Basic PowerShell script to restart the print spooler service and fix common printer issues.

---

## 🛠️ Usage

```bash
# Clone the toolkit
git clone https://github.com/nkydigitech/it-support-toolkit.git

# Move into the directory
cd it-support-toolkit

# Make shell scripts executable (Linux/Mac)
chmod +x *.sh

# Run a script
./flush-dns.sh
./cleanup-temp.sh
./kill-task.sh <process_name_or_id>

# For Windows PowerShell
.\printer-fix.ps1


