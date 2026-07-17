#!/bin/bash

#q1
#
#Write a single awk command that:
#Skips the header row (NR>1).
#Loops through every member and adds up their monthly_fee ($5) into a variable (let's call it revenue).
#Uses the END block to print the final total like this:
#Total Monthly Revenue: $[TOTAL_SUM]

awk 'NR>1 {revenue=revenue+$5} END{print "Total monthly revenue is: " revenue}' gym.txt

#q2
#single awk command that:
#Skips the header row.
#Accumulates the total age ($4) into a variable called total_age.
#Keeps track of the number of members using a counter variable (like count++).
#In the END block, calculates the average age and prints it.

awk 'NR>1 {total_age+=$4; count++} END{print "Average age is: " total_age/count}' gym.txt


