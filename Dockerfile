FROM php:7.2-apache

ENV TARGET_SOCKET=localhost:8080

COPY shake.js /var/www/html
COPY logger.php /var/www/html
COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
