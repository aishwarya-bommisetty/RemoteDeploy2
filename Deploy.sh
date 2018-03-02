#!/bin/bash
ssh ggk@54.244.209.186 < test_script.sh >> f1.txt
cd SpringMVCSecurityXML
mvn install >> f1.txt
mv target/SpringMVCSecurityXML.war target/aishwarya.war
scp target/aishwarya.war ggk@54.244.209.186:/var/lib/tomcat8/webapps
echo "DEPLOYED SUCCESSFULLY"
