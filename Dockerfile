# Stage 1: Build the application
FROM gradle:6.9-jdk8 as builder
WORKDIR /app
COPY . /app
RUN gradle build --no-daemon -x test

# Stage 2: Package the application
FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
