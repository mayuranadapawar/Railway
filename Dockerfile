# Use the official PHP image
FROM php:8.1-apache

# Copy project files to the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Install dependencies (optional)
RUN apt-get update && apt-get install -y libzip-dev && docker-php-ext-install zip

# Expose the default Apache port
EXPOSE 80
