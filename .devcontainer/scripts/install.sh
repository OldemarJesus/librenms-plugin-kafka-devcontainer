#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y \
&& sudo apt install -y php-cli php-curl \
  php-fpm php-gd php-gmp php-mbstring \
  php-mysql php-snmp php-xml php-zip

exit 0