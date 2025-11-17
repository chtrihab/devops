# Use an official OpenJDK runtime as a parent image
FROM openjdk:17.0.1-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/student-management-0.0.1-SNAPSHOT.jar

# Expose the port on which your Spring Boot application will run
EXPOSE 8082

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]