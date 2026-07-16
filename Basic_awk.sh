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

---------------------

order_id item quantity price_each status
101 burger 2 5.50 completed
102 fries 1 3.00 pending
103 shake 3 4.00 completed
104 burger 1 5.50 cancelled
105 pizza 2 12.00 completed

# awk command that skips the header row and prints the item name ($2) and quantity ($3), but only for orders where the status ($5) is exactly "pending".
> awk 'NR>1 && /pending/ {print $2, $3}' orders.txt

# awk cmd that skip header, prints the prodID and prodName and its total prince(price * qty), if its status is completed
>  awk 'NR>1 && $5=="completed" {print $1, $2, $3*$4}' orders.txt

# extract the order ID, item name, and status from a dataset while omitting the header line and excluding any transactions that have been canceled.
>  awk 'NR>1 && $5=="completed" {print $1, $2, $3*$4}' orders.txt

# extract the order ID and item name from a dataset, skipping the header line and showing only the rows where the item purchased is either a burger or a pizza.

> awk 'NR>1 && ($2 == "burger" || $2 == "pizza") {print $1, $2}' orders.txt
or
> awk 'NR> 1 && /pizza|burger/ {print $0}' orders.txt

#format and print high-value completed orders by calculating the total value (quantity multiplied by price) for each item, filtering out any records under 10 dollars along with the header line.
> awk 'NR>1 && $5=="completed" && ($3*$4 >= 10) {print $0}' orders.txt
or
> awk 'NR>1 && $5=="completed" && ($3*$4 >= 10) {print "Order", $1, "(" $2 ") is ready. Total: $" $3*$4}' orders.txt

------------------------

id name tier age monthly_fee checkins
101 Alex Gold 28 50 12
102 Sam Silver 34 35 4
103 Jess Gold 19 50 22
104 Ryan Bronze 42 20 1
105 Maria Gold 31 50 8

