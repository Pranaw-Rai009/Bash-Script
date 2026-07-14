server.txt:
name status cpu_pct location
web-01 active 45 us-east
db-01 inactive 12 us-west
api-01 active 88 eu-central
cache-01 active 95 us-east
auth-01 inactive 5 eu-west


# awk command that reads servers.txt and prints out only the name column ($1) and the location column ($4) for every line
> awk 'NR>1 {print $1, $4}' server.txt

# awk command that prints the name (Column 1) and status (Column 2), but only for servers that are inactive.
> awk 'NR>1 {print $1, $4}' server.txt

# awk command that prints the name ($1) and the cpu_pct ($3) for all servers where the CPU usage is greater than 80.
> awk 'NR>1 && $3>=80 {print $0}' server.txt

# awk command that skips the header, and prints out the server name ($1) followed by its idle CPU percentage (which is 100 - cpu_pct).
> awk 'NR>1 {print $1, " | Idle CPU Percentage: " (100-$3)}' server.txt

# awk command that prints the name ($1) of the servers that meet both of these conditions:
The status ($2) must be exactly "active".
The location ($4) must be exactly "us-east".

> awk 'NR>1 && $2=="active" && $4=="us-east" {print $0}' server.txt


