FROM openjdk:8-alpine
MAINTAINER Srinivasa Vasu, svasu@redhat.com
VOLUME /tmp
ADD target/springboot.jar /opt/springboot/
EXPOSE 8080 8443
ENV JAVA_APP_JAR springboot.jar
WORKDIR /opt/springboot/
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-Xms512m", "-Xmx1g", "-jar", "$JAVA_APP_JAR"]
