#!/bin/bash

# Linux build script voor project
# Door Sem Vriesema

sudo docker-compose up --detach
sudo docker-compose run --rm npm install
sudo docker-compose run --rm composer install
sudo docker-compose run --rm composer require laravel/framework
sudo docker-compose run --rm php php artisan key:generate
sudo docker-compose run --rm php php artisan migrate:fresh
sudo docker-compose run --rm php php artisan db:seed PermissionSeeder
sudo docker-compose run --rm php php artisan db:seed RoleSeeder
sudo docker-compose run --rm php php artisan db:seed RolePermissionSeeder
sudo docker-compose run --rm php php artisan db:seed PakketsTableSeeder

sudo docker-compose run --rm php php artisan admin:create