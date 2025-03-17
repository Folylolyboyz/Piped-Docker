# Base Image for Piped Backend
FROM ghcr.io/aleclol/piped:latest

# Set the working directory
WORKDIR /app

# Ensure the database directory exists
RUN mkdir -p /app/data

# Expose the required port
EXPOSE 8080

# Start the Piped server
CMD ["java", "-jar", "/app/piped.jar"]
