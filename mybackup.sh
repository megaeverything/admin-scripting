#!/bin/bash
#A script to backup the mydata folder

cd ~/mydata
mkdir ~/mydata-backup
tar cf - .| (cd ~/mydata-backup; tar xf -)
