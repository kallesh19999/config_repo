RUN yum install java -y
RUN yum install git -y
RUN yum install maven -y
RUN yum install wget -y 
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz
RUN tar -zxvf apache-tomcat-9.0.70.tar.gz
RUN wget https://get.jenkins.io/war-stable/2.375.1/jenkins.war
COPY jenkins.war /apache-tomcat-9.0.70/webapps/
ENRTYPOINT sh apache-tomcat-9.0.70/bin/startup.sh
