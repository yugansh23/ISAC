FROM php:7.2-apache
COPY apache.conf /usr/local/apache2/conf/demo.apache.conf
RUN echo "Include /usr/local/apache2/conf/apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf
COPY ./public_html/ /var/www/html/
