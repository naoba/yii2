FROM php:7.4-apache


COPY ./app /var/www/html/
WORKDIR /var/www/html

RUN docker-php-ext-install mysqli
#RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'e5325b19b381bfd88ce90a5ddb7823406b2a38cff6bb704b0acc289a09c8128d4a8ce2bbafcd1fcbdc38666422fe2806') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    php composer-setup.php \
    php -r "unlink('composer-setup.php');"

RUN composer create-project --prefer-dist --stability=dev yiisoft/yii2-app-advanced yii_advanced
