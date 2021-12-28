# PHP based on openSUSE 15.3
FROM ghcr.io/fab-infra/php-cli:7.4-opensuse15

# PHP FPM
RUN zypper in -y php7-fpm FastCGI &&\
	zypper clean -a

# Files
COPY ./root /
RUN mkdir -p /var/run/php-fpm /var/log/php-fpm &&\
	chmod -R a+rwX /var/run/php-fpm /var/log/php-fpm

# Ports
EXPOSE 9000
