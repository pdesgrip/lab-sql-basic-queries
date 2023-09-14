USE sakila;

-- Show all tables

SHOW tables;

-- Retrieve all the data from the tables actor, film and customer

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables
-- Titles of all films from the film table
-- List of languages used in films, with the column aliased as language from the language table
-- List of first names of all employees from the staff table

SELECT title FROM film;

SELECT name AS language FROM language;


SELECT first_name FROM staff;

-- Unique release years
SELECT DISTINCT release_year FROM film;

-- Number of stores
SELECT COUNT(*) FROM STORE;

-- NUMBER OF EMPLOYEES

SELECT COUNT(*) FROM STAFF;

-- Determine how many films are available for rent and how many have been rented

-- Films available for rent
SELECT COUNT(DISTINCT inventory_id) FROM inventory;

-- Films that have been rented
SELECT COUNT(DISTINCT rental.inventory_id) AS currently_rented_items_count
FROM rental
WHERE rental.return_date IS NULL;

-- 10 longest films

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Actors with 1st name SCARLETT

SELECT * FROM actor WHERE first_name = 'SCARLETT';


-- Longer than 100m and Armageddon in title

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- Films with 'Behind the Scenes' content

SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';

