-- 1. List all customers who live in Texas (use
-- JOINs)

-- SELECT first_name, last_name, district
-- FROM customer
-- JOIN address
-- ON customer.address_id = address.address_id
-- WHERE district = 'Texas';


-- 2. Get all payments above $6.99 with the Customer's Full
-- Name

-- SELECT CONCAT(customer.first_name,' ', customer.last_name) as Full_name, amount
-- FROM customer
-- JOIN payment
-- ON customer.customer_id = payment.customer_id
-- WHERE amount >6.99 
-- ORDER BY amount DESC;



-- 3. Show all customers names who have made payments over $175(use
-- subqueries)

-- SELECT *
-- FROM customer
-- WHERE customer_id IN(
--     SELECT customer_id
--     FROM payment
--     GROUP BY customer_id
--     HAVING SUM(amount) >= 175
--     ORDER BY SUM(amount)
-- );


-- 4. List all customers that live in Nepal (use the city
-- table)

-- SELECT first_name, last_name, country
-- FROM customer
-- JOIN address
-- ON address.address_id = customer.address_id
-- JOIN city
-- ON address.city_id = city.city_id
-- JOIN country
-- ON city.country_id = country.country_id
-- WHERE country = 'Nepal';


-- 5. Which staff member had the most
-- transactions?

-- SELECT CONCAT(staff.first_name,' ', staff.last_name) as Full_name, COUNT(rental.rental_id) 
-- FROM staff
-- JOIN rental
-- ON staff.staff_id = rental.staff_id
-- GROUP BY Full_name
-- ORDER BY COUNT(rental.rental_id) DESC;


-- 6. How many movies of each rating are
-- there?

-- SELECT COUNT(rating), rating 
-- FROM film
-- GROUP BY rating
-- ORDER BY COUNT(rating);


-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

-- SELECT * 
-- FROM customer
-- WHERE customer_id IN (
--     SELECT customer_id
--     FROM payment
--     WHERE amount > 6.99
--     );


-- 8. How many free rentals did our stores give away?

-- SELECT amount, COUNT(store.store_id)
-- FROM store
-- JOIN staff
-- ON store.store_id = staff.store_id
-- JOIN payment
-- ON staff.staff_id = payment.staff_id
-- WHERE amount = 0.00
-- GROUP BY amount
-- ORDER BY COUNT(store.store_id) DESC;











