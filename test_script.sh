#!/bin/bash
var=$( service tomcat8 status | grep Active )
if [ "$var" = "" ]
then
service tomcat8 start
fi
