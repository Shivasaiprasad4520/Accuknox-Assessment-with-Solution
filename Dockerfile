# Base image
FROM ubuntu:22.04

# Set execute permissions for the shell script
RUN apt update
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean
RUN ./wisecow.sh

# Set the working directory
WORKDIR /app

# Copy the shell script files
COPY  wisecow.sh/app

ADD https://github.com/nyrahul/wisecow

# Expose the application port
EXPOSE 4499

ENTRYPOINT ["apache2ctl"]

# Start the application
CMD ["./wisecow.sh"]
