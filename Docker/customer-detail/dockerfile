FROM openjdk:16-jdk-alpine3.13
MAINTAINER Prashant ojha<prashantojha01@gmail.com>
VOLUME /tmp
EXPOSE 9090
ARG JAR_FILE=target/sample-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} sample.jar
ENTRYPOINT ["java","-jar","/sample.jar"]
