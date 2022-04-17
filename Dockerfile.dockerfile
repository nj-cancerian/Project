FROM openjdk:11.0-jdk-oraclelinux8

RUN mdir -p /home/app

COPY  /home/nitin/*.jar /home/app

CMD ["java" , "-jar", "Calculator-1.0-SNAPSHOT.jar"]