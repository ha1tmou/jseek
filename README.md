# JSeek

JSeek is a job board web application built with `PHP` It includes a custom Laravel-like router, controller classes, views, a database layer and a project structure using namespaces and PSR-4 autoloading.

## Usage

### Requirements

- PHP 8.3 or higher
- MySQL 8.0 or higher

### Installation

1. Clone the repo
2. Create a database called `jseek`
3. Import the `jseek.sql` file into your database
4. Update the `config/db.php` file with your credentials
5. Run `composer install` to set up the autoloading
6. Set your document root to the `public` directory

### Setting the Document Root

You will need to set your document root to the `public` directory. If you are using the PHP built-in server, you can run the following command from the project root:

`php -S localhost:8000 -t public`
