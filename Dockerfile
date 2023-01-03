FROM tomcat:9.0.70-jdk8-corretto-al2
ADD gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD  ["/usr/local/tomcat/bin/catalina.sh","run"]
