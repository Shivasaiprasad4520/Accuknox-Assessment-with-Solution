# Use an appropriate base image
FROM ubuntu:latest

# Set execute permissions for the shell script
RUN apt update \
    && apt install apache2 -y \
    && apt install apache2-utils -y \
    && apt clean

# Set the working directory
WORKDIR /app

# Copy the shell script files
COPY wisecow.sh /app/wisecow.sh

# Set execute permissions for the shell script
RUN chmod +x /app/wisecow.sh

# Expose the application port
EXPOSE 4499

# Start the application
ENTRYPOINT ["/bin/sh", "-c", "/app/wisecow.sh"]
