# PHP-FPM server based on openSUSE 42
FROM fcrespel/base-image:opensuse42

# PHP with modules
RUN zypper ar -f http://download.opensuse.org/repositories/server:/php:/extensions:/php7/openSUSE_Leap_42.3/server:php:extensions:php7.repo &&\
	zypper --gpg-auto-import-keys ref &&\
	zypper in -y php7 php7-devel \
	php7-bz2 \
	php7-ctype \
	php7-curl \
	php7-dom \
	php7-exif \
	php7-fileinfo \
	php7-fpm \
	php7-ftp \
	php7-gd \
	php7-geoip \
	php7-gettext \
	php7-iconv \
	php7-imagick \
	php7-intl \
	php7-json \
	php7-ldap \
	php7-mbstring \
	php7-memcached \
	php7-mysql \
	php7-opcache \
	php7-openssl \
	php7-pcntl \
	php7-pdo \
	php7-phar \
	php7-posix \
	php7-redis \
	php7-soap \
	php7-tidy \
	php7-tokenizer \
	php7-xmlreader \
	php7-xmlrpc \
	php7-xmlwriter \
	php7-xsl \
	php7-zip \
	php7-zlib \
	php7-APCu \
	php-composer \
	FastCGI &&\
	zypper clean -a

# Browscap database
RUN wget -nv https://browscap.org/stream?q=Lite_PHP_BrowsCapINI -O /usr/share/php7/browscap.ini

# Files
COPY ./root /
RUN chmod +x /run.sh &&\
	chmod a+rw /etc/passwd /etc/group &&\
	mkdir -p /var/run/php-fpm /var/log/php-fpm &&\
	chmod -R a+rwX /var/lib/php7 /var/run/php-fpm /var/log/php-fpm

# Ports
EXPOSE 9000
