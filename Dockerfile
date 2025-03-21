# Use official PHP image
FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy project files into the container
COPY src/ /var/www/html/

# Expose port 80
EXPOSE 80

