FROM php:8.2-apache

# Installer les modules PHP
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo pdo_mysql mysqli \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug pdo pdo_mysql mysqli \
    && rm -rf /var/lib/apt/lists/*

# Allumer mod_rewrite pour Apache
RUN a2enmod rewrite

# Spécifier le répertoire de travail
WORKDIR /var/www/html

# Démarrage du serveur
CMD ["apache2-foreground"]
