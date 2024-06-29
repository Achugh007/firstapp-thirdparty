# This file is no longer in use.
FROM openjdk:11-jdk # Or the appropriate Java base image

# Set Working Directory in Container
WORKDIR /app

# Copy source code
COPY . .

# Install Maven if it's not included in the base image
RUN apt-get update && apt-get install -y maven

# Compile and run tests
RUN mvn clean install -DskipTests
RUN mvn test

# Expose a port (if you are building a service)
# EXPOSE 8080

# Start the app (if you are building a service)
# CMD ["mvn", "spring-boot:run"]
