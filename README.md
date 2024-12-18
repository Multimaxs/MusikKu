HOW TO RUN :

Requirement : 
PHP: At least version 8.2 or newer (required for Laravel 11).
Composer: For dependency management.
Web Server and Database : XAMPP At least version 8.2 or newer 8.2

Run on localhost :
1. Clone this repository
2. Open terminal and type : composer install (if doesn't work enable the zip and intl extension : https://youtu.be/GXU4cl2EhEs?si=MuuRKOu_YnFZSYe6)
3. Import the musikku.sql file onto your xampp : https://youtu.be/2ynKAAt1G4Y?si=bnlL0yuhxe-8INvR
4. Open terminal again and type : cp .env.example .env
5. Set the DB_DATABASE, DB_USERNAME, and DB_PASSWORD based on your DATABASE
6. Open terminal and type : php artisan key:generate
7. Open terminal and again type : php artisan migrate
8. To start the localhost you must open terminal and type : php artisan serve
