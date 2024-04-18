awk can be used to cut out specific information from a file


like columns rows no. of rows etc,so that
we only get the required info from a log file/file


awk '{print NR,$3,$5}' application.log
This will print column
NR will print no. of row in the starting


awk '{print NR,$3,$5}' application.log | head
awk '{print NR,$3,$5}' application.log | tail

these will print the first and last 10 commands of all the info on the file

awk 'NR>=0 && NR<=30 {print NR,$3,$5}' application.log
this will print the no. of rows you want from the particular log you wanted earlier

--------------------------------------------------

awk /TRACE/ application.log
This will print the Trace parts of the log in the file
same thing we did in grep too.

awk 'NR>=0 && NR<=30 && /INFO/ {print NR,$1,$2,$3,$4}' application.log
This is other way of doing it

awk 'NR>=0 && NR<=30 && /INFO/ {print NR,$1,$2,$3,$4}' application.log > info_log_only.log
This saves it to a file

-----------------------------------------------

awk '$2>"08:52:00" && $2<"08:55:00" && /INFO/ {print NR,$1,$2,$3,$4}' application.log
This way we can soft through time stamp