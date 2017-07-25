FROM ubuntu

RUN apt-get update

RUN apt-get install -y unzip zip

RUN apt-get -y install php7.0

RUN  apt-get -y install php-pdo php-mysql php-curl php-gd php-intl php-pear php-imagick php-imap php-mcrypt php-memcache  php-pspell php-recode php-sqlite3 php-tidy php-xmlrpc php-xsl php-mbstring php-mongodb

RUN apt-get install -y nginx

RUN apt-get install  -y npm

RUN a2enmod rewrite

RUN apt-get install -y composer

RUN mkdir -m 777 /var/www/html/storage

CMD mkdir -m 777 /var/www/html/

COPY default /etc/nginx/sites-enabled/
COPY 000-default.conf /etc/nginx/sites-available/

RUN service apache2 restart

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
EXPOSE 8000
