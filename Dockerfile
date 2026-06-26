FROM amazoncorretto:17-alpine

WORKDIR /app

COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-Duser.timezone=UTC", "-jar", "app.jar", "--spring.profiles.active=prod"]