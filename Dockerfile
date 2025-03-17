# Base Image for Piped Backend
FROM 1337kavin/piped-frontend:latest

# Set the working directory
WORKDIR /app

# Ensure the database directory exists
RUN mkdir -p /app/data

# Expose the required port
EXPOSE 8080

# Start the Piped server
CMD ["java", "-jar", "/app/piped.jar"]
