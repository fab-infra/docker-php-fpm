# PHP based on openSUSE 16.0
FROM ghcr.io/fab-infra/php-cli:8.4-opensuse16

# PHP FPM
RUN zypper in -y php8-fpm FastCGI &&\
	zypper clean -a

# Files
COPY ./root /
RUN confd -onetime -backend env &&\
	mkdir -p /var/run/php-fpm /var/log/php-fpm &&\
	chmod -R a+rwX /etc/php8 /var/run/php-fpm /var/log/php-fpm

# Ports
EXPOSE 9000
