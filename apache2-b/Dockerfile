FROM webdevops/apache:ubuntu-16.04

MAINTAINER Eric Pfeiffer <computerfr33k@users.noreply.github.com>

ARG PHP_SOCKET=php-fpm:9000

ENV WEB_PHP_SOCKET=$PHP_SOCKET

ENV WEB_DOCUMENT_ROOT=/var/www/public

COPY vhost.conf /opt/docker/etc/httpd/vhost.conf
COPY ssl/ /opt/docker/etc/httpd/ssl/
COPY httpbasicpass /var/www/public/

EXPOSE 80 443

WORKDIR /var/www/public

ENTRYPOINT ["/opt/docker/bin/entrypoint.sh"]

CMD ["supervisord"]
