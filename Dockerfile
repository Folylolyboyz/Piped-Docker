# Base Image for Piped Backend
FROM ghcr.io/aleclol/piped:latest

# Set the working directory
WORKDIR /app

# Copy config file if needed (modify as per actual file location)
COPY config.example.json /app/config.json

# Expose the required port
EXPOSE 8080

# Start the Piped server
CMD ["java", "-jar", "/app/piped.jar"]
