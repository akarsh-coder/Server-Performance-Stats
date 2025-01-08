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
=== Server Performance Stats ===
=== Total CPU Usage ===
CPU Usage: 100%

=== Total Memory Usage ===
Used: 1276MB (66.05%), Free: 131MB (6.78%)

=== Total Disk Usage ===
Used: 5.6G (23%), Free: 19G

=== Top 5 Processes by CPU Usage ===
    PID COMMAND         %CPU
  18409 ps               100
  17326 sshd             0.4
   1668 gnome-shell      0.3
    436 vmtoolsd         0.3
   1900 vmtoolsd         0.3

=== Top 5 Processes by Memory Usage ===
    PID COMMAND         %MEM
   1668 gnome-shell      9.7
   1878 gnome-software   8.4
   2196 gsd-xsettings    2.3
   1898 evolution-alarm  2.2
  18354 fwupd            2.1



```

## Requirements
- This script has been tested on Linux systems, such as Rocky Linux.
- All commands used in the script (`top`, `free`, `df`, `ps`, `awk`) are standard Linux tools and should be present by default.

## Reference
For more information about server monitoring: [Server Stats - Roadmap](https://roadmap.sh/projects/server-stats).
