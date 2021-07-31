#!/bin/bash
mkdir $PWD/ssl/$1
openssl req -new -newkey rsa:2048  -nodes -keyout $PWD/ssl/$1/key.key -out $PWD/ssl/$1/cert.csr
