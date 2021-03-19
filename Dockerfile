FROM tomcat:latest

LABEL maintainer="Squad12"

ADD /target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/ProdWebapp

EXPOSE 8080

CMD ["catalina.sh", "run"]
