#!/bin/bash
command=/var/lib/jenkins
if [ -f $command ]
then
   echo "$command is available, let's run it...."
else
   echo "$command is not available, installing it...."
   sudo apt update
   sudo apt install maven -y
   mvn -v
fi
