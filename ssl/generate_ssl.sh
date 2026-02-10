#!/bin/bash


openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout ./ssl/nginx-selfsigned.key \
  -out ./ssl/nginx-selfsigned.crt \
  -subj "/C=US/ST=State/L=City/O=Organization/OU=Department/CN=localhost"

echo "-----------------------------------"
echo "Certificates generated"
ls -lh
echo "-----