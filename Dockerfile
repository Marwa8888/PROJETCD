FROM openjdk:12.0.1
VOLUME /tmp
ARG JAR_FILE
ADD target/projetcd-1.1-SNAPSHOT.war /usr/share/myservice/myservice.war
ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/myservice/myservice.war"]

