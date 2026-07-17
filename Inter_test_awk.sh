#!/bin/bash

#Write a single awk command that:

#Skips the header row (NR>1).

#Loops through every member and adds up their monthly_fee ($5) into a variable (let's call it revenue).

#Uses the END block to print the final total like this:
#Total Monthly Revenue: $[TOTAL_SUM]

awk 'NR>1 {revenue=revenue+$5} END{print "Total monthly revenue is: " revenue}' gym.txt
