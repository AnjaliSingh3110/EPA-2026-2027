#!/bin/bash

# this is a comment

# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c"

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0"
else
	echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
echo "There are $ct processes running on this machine"


# check process count against the user's limit ($1)
# pass "file" as 2nd parameter to log to file, otherwise print to screen
if [ $ct -gt $1 ]; then
	if [ "$2" = "file" ]; then
		echo "$(date) - Maximum number of processes exceeded" >> process_log.txt
	else
		echo "Maximum number of processes exceeded"
	fi
else
	if [ "$2" = "file" ]; then
		echo "$(date) - The maximum number of processes NOT exceeded" >> process_log.txt
	else
		echo "The maximum number of processes NOT exceeded"
	fi
fi
