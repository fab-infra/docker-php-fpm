[![build](https://github.com/fab-infra/docker-php-fpm/actions/workflows/build.yml/badge.svg)](https://github.com/fab-infra/docker-php-fpm/actions/workflows/build.yml)

# PHP + FPM Docker image

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 9000 | FastCGI port |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| APPLICATION_ENV | Application environment | |
| SERVER_ENV | Server environment | |

## Volumes

The following container paths can be used to mount a dedicated volume or to customize configuration.

| Path | Description |
| ---- | ----------- |
| /etc/php7/fpm/php.ini | PHP configuration |
| /var/lib/php7 | Session save path |
| /var/log/php-fpm | Error and slow logs |

## Useful links

- [PHP documentation](https://www.php.net/manual/en/)
- [PHP-FPM documentation](https://www.php.net/manual/en/install.fpm.configuration.php)
