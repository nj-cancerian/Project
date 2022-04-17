#!/bin/bash

cp /var/lib/jenkins/workspace/my-proeject/target/*.jar /home/nitin/jarfiles
echo “File copied.”

#note ssh pass must be installed in ther system (apt install sshpass)
sshpass -f "/home/nitin/passwd" scp /home/nitin/jarfiles/*.jar nitin@3.111.32.20:/home/nitin

echo "filetransfered"
