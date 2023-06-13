#!/bin/bash

docker-compose up --force-recreate --no-deps -d nginx

docker-compose run --rm --entrypoint "\
  certbot certonly --staging --webroot \
  --register-unsafely-without-email --agree-tos \
  --webroot-path=/var/www/certbot \
  --domain www.painel.sistran.app --domain painel.sistran.app \
  --rsa-key-size 4096 --verbose --keep-until-expiring" certbot
