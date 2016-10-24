#FROM index.alauda.cn/alaudasa/centos6-jdk7-maven3
FROM index.alauda.cn/alaudasa/websphere-liberty

#COPY settings.xml /usr/share/maven/conf/settings.xml
# 
#### Install Oracle JDBC ###
##COPY ojdbc7.jar /ojdbc7.jar
##RUN mvn install:install-file -Dfile=/ojdbc7.jar -DgroupId=com.oracle.jdbc -DartifactId=ojdbc7 -Dversion=12.1.0.2 -Dpackaging=jar
#
#COPY ojdbc6.jar /ojdbc6.jar
#RUN mvn install:install-file -Dfile=/ojdbc6.jar -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0.3 -Dpackaging=jar
#
#### Compile ###
#ADD pom.xml /pom.xml
#RUN cd / && mvn dependency:go-offline
#
#WORKDIR /code
#ADD pom.xml /code/pom.xml
#ADD src /code/src
#ADD server.xml /usr/local/tomcat6/conf/server.xml
#RUN ["mvn", "package"]

### install ###
#RUN cp target/demo.war $CATALINA_HOME/webapps/
COPY target/demo.war /config/dropins/demo.war

### run ###
#EXPOSE 80
#CMD ["catalina.sh", "run"]

