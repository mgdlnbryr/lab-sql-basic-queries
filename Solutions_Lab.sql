-- 1. Show all tables
USE sakila;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3. Retrieve all the following columns from their respective tables:

	-- 3.1 Titles of all films from the film table
    SELECT DISTINCT title from sakila.film; 
    
    -- 3.2 List of languages used in films, with the column aliased as language from the language table
    SELECT DISTINCT name as 'language' from sakila.language;
    
    -- 3.3 List of first names of all employees from the staff table
    SELECT DISTINCT first_name from sakila.staff;
    
-- 4. Retrieve unique release years
SELECT DISTINCT release_year from sakila.film;

-- 5. Counting records for database insights

	-- 5.1 Determine the number of stores that the company has.
    SELECT store_id from sakila.store;
    
	-- 5.2 Determine the number of employees that the company has.
    SELECT staff_id from sakila.staff;
    
	-- 5.3 Determine how many films are available for rent and how many have been rented.
    SELECT count(distinct(inventory_id)), count(distinct(rental_id)) FROM sakila.rental;
    
	-- 5.4 Determine the number of distinct last names of the actors in the database. 
    SELECT count(distinct(last_name)) FROM sakila.actor; 
    
-- 6. Retrieve the 10 longest films.
SELECT * from sakila.film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:

	-- 7.1 Retrieve all actors with the first name "SCARLETT".
    SELECT * from sakila.actor 
    WHERE (first_name = "SCARLETT");
	-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
			-- Hint: use LIKE operator. More information here.
	SELECT * FROM sakila.film
	WHERE title LIKE "%ARMAGEDDON%" AND length > 100;
    
	-- 7.3 Determine the number of films that include Behind the Scenes content
    SELECT * FROM sakila.film
    WHERE special_features LIKE "%Behind the Scenes%"