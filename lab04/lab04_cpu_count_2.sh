#!/bin/bash
# Lab04 Exercise 2: check the VM has at least $1 CPU cores
# function: show how to use the script, then stop with an error
usage() {
   echo "Usage: lab04_cpu_count.sh [MAX_NUM_CORES]"
   exit 1
}

# if the user did not give a number, show the usage message
if [ -z "$1" ]; then
    usage
fi
# count the CPUs: find "processor" lines and count them
num_cpu=$(grep processor /proc/cpuinfo | wc -l)
echo "This machine has $num_cpu CPU cores"

# check if machine has fewer CPU cores than the user needs. 
if [ $num_cpu -lt $1 ]; then
    echo "ERROR: not enough CPU cores (need $1, found $num_cpu)"
    exit 1
else 
    echo "OK: enough CPU cores (need $1, found $num_cpu)"
fi
