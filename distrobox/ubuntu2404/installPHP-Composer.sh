#!/bin/bash
#From: https://docs.vultr.com/how-to-install-laravel-on-ubuntu-24-04
sudo apt update -y
sudo apt install  composer php php-curl php-bcmath php-json php-mysql php-mbstring php-xml php-tokenizer php-zip git -y
#View installed PHP version
php -v
#View installed Composer version
composer -v


