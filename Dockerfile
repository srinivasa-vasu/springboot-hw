#FROM openjdk:8-alpine
#MAINTAINER Srinivasa Vasu, svasu@redhat.com
#VOLUME /tmp
#ADD target/springboot.jar /opt/springboot/
#EXPOSE 8080 8443
#ENV JAVA_APP_JAR springboot.jar
#WORKDIR /opt/springboot/
#ENTRYPOINT ["/bin/bash", "-c"]
#CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-Xms512m", "-Xmx1g", "-jar", "springboot.jar"]

FROM fabric8/java-jboss-openjdk8-jdk:1.2.1
MAINTAINER Srinivasa Vasu, svasu@redhat.com
ENV JAVA_APP_JAR springboot.jar
ENV AB_ENABLED jolokia
ENV AB_JOLOKIA_AUTH_OPENSHIFT true
ENV JAVA_OPTIONS -Xmx256m

EXPOSE 8080
RUN chmod -R 777 /deployments/
ADD target/$JAVA_APP_JAR /deployments/
