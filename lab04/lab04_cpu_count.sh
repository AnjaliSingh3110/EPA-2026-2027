#!/bin/bash
# Lab04 Exercise 1: check the VM has at least $1 CPU cores

# count the CPUs: find "processor" lines and count them
num_cpu=$(grep processor /proc/cpuinfo | wc -l)
echo "This machine has $num_cpu CPU cores"

# check if more processes are running than the number the user passed in
if [ $num_cpu -lt $1 ]; then
    echo "ERROR: not enough CPU cores (need $1, found $num_cpu)"
    exit 1
else 
    echo "OK: enough CPU cores (need $1, found $num_cpu)"
fi
