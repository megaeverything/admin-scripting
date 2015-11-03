#!/bin/bash

# This script is for the COMP2101 course at georgian college.
#It is supposed to be able to:

#Test if bind is installed, and install it if it is not installed.
#Get a domain name from the script user. Complain and exit if the domain already exists.
#Create a zone file for the new domain.
#Use 127.0.0.1 as the IP address for the name ns1 in the new domain. Use that as the name of the nameserver for the domain.
#Add the name www with the address 192.168.47.91 to the domain.
#Add the name mail with the address 192.168.59.5 to the domain.
#Set the origin of the domain to be ns1 in the domain and the domain admin email to be hostmaster@thedomainname.
#Create reverse zone files for the 192.168 addresses we have used.
#Add your new zones to the named.conf.local file if they aren't already there.
#Reload bind and test that nslookup successfully finds the new names using your private nameserver.

###########
#Script
###########

echo "Checking for root access..."
if [ `id -u` != "0" ]; then
	echo "You need to be root for parts of this script to run properly."
	echo "Please try using sudo and restarting this script"
	exit 1
fi
echo "SUCCESS!"
echo ""

echo "Checking if Bind is installed..."
if [[ `dpkg-query -W -f='${Status} ${Version}\n' bind9` != install* ]]; then
    echo "You do not have bind installed"
    echo "Installing bind9..."
fi
echo "SUCCESS!"
echo ""
