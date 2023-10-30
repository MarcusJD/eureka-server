# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/eurekaserver.jar /app/eurekaserver.jar

# Run the application when the container starts
CMD ["java", "-jar", "eurekaserver.jar"]