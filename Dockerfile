FROM ubuntu:latest
ADD devops.war /
RUN apt-get -y update && apt-get install -y wget && apt-get install -y unzip
RUN apt-get -y install openjdk-8-jdk
RUN wget http://redrockdigimark.com/apachemirror/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.zip && unzip apache-tomcat-8.5.30.zip
RUN cp devops.war ./apache-tomcat-8.5.30/webapps
RUN chmod +x ./apache-tomcat-8.5.30/bin/*
EXPOSE 8080 6060
CMD ./apache-tomcat-8.5.30/bin/catalina.sh run 
