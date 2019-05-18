FROM openjdk:13-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY $/target/projetcd-1.1-SNAPSHOT.war app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

