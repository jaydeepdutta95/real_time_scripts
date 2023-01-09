#Author - Jaydeep Dutta - 01/01/2023
#!/bin/bash
echo "----------------------------------------------------------------------------------------"
echo "Hi Good Morning! Please enter a Name: "
read name
echo "Hi $name Wish You a very happy new Year 2023"
echo "

"
sleep 1
echo "Hi $name - Please See the Detailed Server status below: ------ "
sleep 1
echo "--------------------------Current Date and Time------------------------------------------------"
date | awk '{print "Today is: " $3 "st - " $2 " ; Day = " $1 " ; Time: " $4 }'
echo "

"
echo " -----------------------------OS Details-----------------------------------"
cat /etc/os-release | head -1 | grep PRETTY_NAME= | cut -d '"' -f2
echo "

"
echo "----------------------Disk Space Available--------------------------------------"

df -H | xargs | awk '{print "Disk Space available: " "Free/Used: " $10  "/" $9 " :GB" }'
echo"

"
echo "------------------------The Internal Memory Status as below------------------------------------"

free | xargs | awk '{print "Memory Staus: - " "Free/Used: " $10 "/" $9 " :MB" }'
echo "

"
echo "--------------------Top Process-------------------------------------"

top | head -3

echo "

"
echo "--------------------User UPTIME----------------------------------"

uptime
echo "

"

echo "------------------------Last 3 Login Details----------------------------------"
last | head -3
echo "
"
echo "--------------------------Currently Connected----------------------------------"

w

echo "---------------------------END----------------------------------------------"