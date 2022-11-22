FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/danielgirardiweb-1.0.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]