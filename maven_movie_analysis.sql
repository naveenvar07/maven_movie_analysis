show databases;
use mavenmovies;
show tables;
/* 2. List all details of actors.*/
select * from actor;
/*3. List all customer information from the database.*/
select * from customer;
/* 4. List different countries.*/
select * from country;
/* 5. Display all active customers.*/
select * from customer
WHERE active=1;
/* 6. List all rental IDs for customers with ID 1.*/
select * from rental
WHERE customer_id like '%1%'; 
/*7. Display all the films whose rental duration is greater than 5.*/
select * from film
WHERE rental_duration>5;
-- 8. List the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film
WHERE replacement_cost BETWEEN 15 and 20;
/*9. Display the count of unique first names of actors.*/
select COUNT(DISTINCT first_name) FROM actor;
-- 10. Display the first 10 records from the customer table.--
select * from customer
LIMIT 10;
/*11. Display the first 3 records from the customer table whose first name starts with 'b'.*/
select * from customer
WHERE first_name LIKE 'B%'
LIMIT 3;
/* 12. Display the names of the first 5 movies which are rated as 'G'.*/
select * from film
WHERE rating='G'
LIMIT 5;
/*13. Find all customers whose first name starts with "a".*/
select * from customer 
WHERE first_name LIKE 'A%';
/*14. Find all customers whose first name ends with "a".*/
select * from customer 
WHERE first_name LIKE '%A';
/* 15. Display the list of first 4 cities which start and end with 'a'.*/
select * from city
WHERE city LIKE 'A%A'
LIMIT 4;
/*  16. Find all customers whose first name contains "NI" in any position.*/
select * from customer 
WHERE first_name LIKE '%NI%';
/*17. Find all customers whose first name has "r" in the second position.*/
select * from customer 
WHERE first_name LIKE '_R%';
/*18. Find all customers whose first name starts with "a" and are at least 5 characters in length.*/
select * from customer
WHERE first_name LIKE 'A_____';
/* 19. Find all customers whose first name starts with "a" and ends with "o".*/
select * from customer
WHERE first_name LIKE 'A%O';
/* 20. Get the films with PG and PG-13 ratings using the IN operator.*/
select * from film
WHERE rating IN('PG','PG-13');
/*21. Get the films with lengths between 50 to 100 using the BETWEEN operator.*/
select * from film
WHERE length BETWEEN 50 and 100;
/* 22. Get the top 50 actors using the LIMIT operator.*/
select * from actor
LIMIT 50;
/* 23. Get the distinct film IDs from the inventory table.*/
select DISTINCT film_id from inventory;



