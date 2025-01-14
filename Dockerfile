FROM ubuntu

RUN apt-get update
RUN apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
RUN ["/bin/bash", "-c", "source /etc/apache2/envvars"]
RUN echo 'Hello, docker' > /var/www/index.html

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
