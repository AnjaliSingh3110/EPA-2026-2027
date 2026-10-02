#Lab03-Bash Scripting 

The lab had a script to work with, the template script was the starting point, and then there were three exercises that built on each other. 
-One checked if the number of processes was over whatever you passed in as the first argument. (Exercise1)
-The next one did the same thing but also wrote the result into the process log with a date/time stamp. (Exercise2)
-The last one added a second parameter so you could decide if it should go to the file or just print on screen. (Exercise3)

I used Claude for the edits in the code for some parts. 
-There was a line-ending problem that needed sed, and chmod was explained for making things executable.
-One time Nano glitched and added an extra line that broke the script.
-For the first exercise, the if statement got left with blanks by mistake, which caused an error about expecting an integer. 
-Later exercises needed the date command and append redirection. 
-The nested if in the third one took a couple of tries to get the messages right.

I learned how parameters work with dollar one and two, how to compare numbers versus text, and what the pipe does when counting processes. Testing with different inputs showed where it would break without extra checks.
Next time, I want to handle the logic without as much outside help and maybe add some validation so it does not fail on bad input. It feels like the main parts are working now, but the code could be cleaner. 
