#!/bin/bash

i=1 #initializing 'i' with 1

while [ $i -ne 0 ]; do #while statement starts
echo ""
echo "SELECT THE OPTION TO PROCEED WITH"
echo ""
echo "SHOW RUNNING PROCESSES : "
echo ""
echo "1. ALL PROCESSES"
echo "2. ALL PRICESSES WITH TTY, EXCEPT SESSION LEADERS"
echo "3. ALL PROCESSES WITH TTY, INCLUDING OTHER USERS"
echo "4. ALL PROCESSES EXCEPT SESSION LEADERS"
echo "5. NEGATE SELECTION"
echo "6. ONLY RUNNING PROCESSES"
echo "7. ALL PROCESSES ON THIS TERMINAL"
echo "8. PROCESSES WITHOUT CONTROLLING TTYS"
echo ""
read n      # input selection (1-8)
case $n in  #switch case starts
1) ps -e
	;;
2) ps -a
	;;
3) ps a
	;;
4) ps -d
	;;
5) ps -N
	;;
6) ps r
	;;
7) ps T
	;;
8) ps x
	;;
esac       # Switch case ends

echo ""
echo "YOUR PROCESSES HAVE BEEN SHOWN. ENTER 0 TO EXIT; ELSE PRESS 1 TO CONTINUE"
read i
done   # While statement ends