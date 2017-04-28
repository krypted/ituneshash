#!/bin/sh
#
#
#
#Jamf Pro Extension Attribute to return the App Store Account Hash for iTunes 
#Note that the return is null if one is not found
#
#
result=`/usr/libexec/mdmclient QueryAppInstallation | grep iTunesStoreAccountHash | sed '/.*\"\(.*\)\".*/ s//\1/g'`
echo "<result>$result</result>"
