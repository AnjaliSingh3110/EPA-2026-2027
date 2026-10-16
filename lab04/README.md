GenAI used: Claude
Code changed after AI help: 
Ex1: the unary operator expected error came from leaving $ct from Lab 3. Changed it to $num_cpu, -gt to -lt, and added exit 1. 
Ex2: Claude provided the usage function and the -z "$1" check. 
Ex3: Claude suggested nproc and free -h and gave the lines to add; you wrote the explanation messages. 

Reflection: In this lab, I learned how to count CPU cores in two ways: using /proc/cpuinfo grep search and counting with the wc -l command, and using the nproc command, which is the right way to do this since it is cgroup-aware. I also learned how to create a function in bash and call it to print a usgae message whenever the user forgets to pass a number as an argument. 

My worst mistake was using my Lab 3 if statement without replacing $ct with $num_cpu, which caused me the "unary operator expected" error, which means that the variable was empty. Moreover, I made a mistake in my file name and fixed it with mv. 

To make sure I understood the code, I tested each of the scripts with various inputs (1,2,4 and without a number) and ensured that the results were what I expected from it. For next time, I would try writing more code on my own before asking for help in order to be prepared for the CA. 
