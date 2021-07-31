#!/bin/bash

openssl req -x509 -out mydomain.com.crt -keyout mydomain.com.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=mydomain.com' -extensions EXT -config <( \
   printf "[dn]\nCN=mydomain.com\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:mydomain.com\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")