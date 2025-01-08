# Server Stats Script

This script displays essential information about system resource usage, such as CPU, RAM, disk, and the top processes consuming these resources. It is a useful tool for quickly monitoring server performance.

## Features

The script provides the following features:
- **CPU Usage**: Displays total CPU usage.
- **RAM Usage**: Displays total RAM usage.
- **Disk Usage**: Displays total disk usage.
- **Top 5 Processes by CPU Usage**: Lists the 5 processes consuming the most CPU.
- **Top 5 Processes by RAM Usage**: Lists the 5 processes consuming the most RAM.

## How to Run the Script

1. Clone this repository or copy the code to a `.sh` file on your server.
2. Grant execute permission to the script:
```bash
   chmod +x your_script.sh
```

## Run the script
   ```bash
   ./server-stats.sh
```  

## Sample Output

Below is an example of the output:
```bash
===== CPU USAGE =====
Total CPU usage: 30%

===== RAM USAGE =====
Total RAM usage: 1024MB of 4096MB

===== DISK USAGE =====
Total disk usage: 150G of 500G (30% used)

===== TOP 5 PROCESSES BY CPU USAGE =====
COMMAND          %CPU
firefox          45.5
chrome           30.2
...

===== TOP 5 PROCESSES BY RAM USAGE =====
COMMAND          %MEM
firefox          25.3
chrome           20.7
...

```

## Requirements
- This script has been tested on Linux systems, such as Rocky Linux.
- All commands used in the script (`top`, `free`, `df`, `ps`, `awk`) are standard Linux tools and should be present by default.

## Reference
For more information about server monitoring: [Server Stats - Roadmap](https://roadmap.sh/projects/server-stats).
