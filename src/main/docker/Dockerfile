FROM openjdk:alpine
MAINTAINER Srinivasa Vasu
VOLUME /todel
ADD target/springboot.jar /opt/springboot/
EXPOSE 8080 8443
WORKDIR /opt/springboot/
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-Xms512m", "-Xmx1g", "-jar", "springboot.jar"]
