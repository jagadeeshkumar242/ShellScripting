#!/usr/bin/bash
<< EOF
TO="dowithscripting@gmail.com"
TH_L=400
free_RAM=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $free_RAM -lt $TH_Lm ]]
then
	echo -e "Server is running with low RAM size\nAvaiable RAM is: $free_RAM" | /bin/mail -s "RAM INFO $(date)" $TO
fi
EOF
<< EOF
MailId="dowithscripting@gmail.com"

echo -e "The file system utilization on $(hostname -s) is: \n $(df -h)" | /usr/bin/mail -s "filesystem utilization" "$mailId"
EOF

emailId="jagadeeshkumar242@gmail.com"

FU=$(df -h | grep /dev/xvda | awk '{print $5}' | tr -d "%")

if [[ $FU -ge 80 ]]
then
	echo "The file system /dev/xvda usage is: $FU" | /usr/bin/mail -s "filesystem utilization" "$emailId"
