FROM openjdk:8-alpine3.9

#RUN apk update && apk add bash

WORKDIR /app

COPY /target/docker-java-app-example.jar /app

EXPOSE 8080

# ENTRYPOINT ["java","-jar","/app/docker-java-app-example.jar"]

CMD ["java", "-jar", "docker-java-app-example.jar"]