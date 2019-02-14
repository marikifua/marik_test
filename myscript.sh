#!/bin/bash
tar -cvzf ~/`date +"%k-%M"`files.tar.gz ~/dir4
#find -mmin +30 -name "*.tar.gz" -exec aws s3 cp "/home/ec2-user/*.tar.gz" s3://devopstest11127/ \;
find /home/ec2-user -mmin +30 -name "*.tar.gz" -exec aws s3 cp "{}" s3://devopstest11127/ \;
find ~/ -mmin +30 -name "*.tar.gz" -exec rm -f {} \;
# added change to script 11
