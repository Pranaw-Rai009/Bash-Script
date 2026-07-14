# awk command that reads servers.txt and prints out only the name column ($1) and the location column ($4) for every line
> awk 'NR>1 {print $1, $4}' server.txt

# awk command that prints the name (Column 1) and status (Column 2), but only for servers that are inactive.
> awk 'NR>1 {print $1, $4}' server.txt
