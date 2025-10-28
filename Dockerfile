# Step 1: Use an official OpenJDK image as base
FROM openjdk:17-jdk-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy the built JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Expose port 8081 (the port your Spring Boot app runs on)
EXPOSE 8081

# Step 5: Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
