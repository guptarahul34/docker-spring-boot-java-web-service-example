FROM openjdk:8-alpine3.9
RUN mkdir /app
WORKDIR /app
COPY target/*.jar /app/
EXPOSE 8090
ENTRYPOINT ['java','-jar','/app/docker-java-app-example.jar']
