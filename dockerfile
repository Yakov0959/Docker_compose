FROM httpd:2.4
RUN apt-get update && apt-get install -y php php-mysql libapache2-mod-php git
RUN rm  /var/www/html/*
RUN git clone https://github.com/FaztWeb/php-mysql-crud.git /var/www/html/
RUN sed -i 's/localhost/10.0.0.3/' /var/www/html/db.php
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
