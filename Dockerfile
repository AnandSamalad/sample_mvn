FROM amazoncorretto:17-alpine3.14

RUN apk update
RUN apk upgrade

WORKDIR /app

COPY target/*.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]