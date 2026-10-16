#!/bin/bash
# Lab04 Exercise 1: check the VM has at least $1 CPU cores

# count the CPU: find "processor" lines and count them
num_cpu=$(grep processor /proc/cpuinfo | wc -1)
echo "This machine has $num_cpu CPU cores"

#check if more processes are runnijg than the number the user passed in
if [  $ct -gt $1 ]; then
    echo "Maximum number of processes exceeded"
else
    echo "The maximum number of processes NOT exceeded"
fi
