--1. List the films where the yr is 1962 and the budget is over 2000000 [Show id, title]
	
SELECT id, title	
FROM movie	
WHERE yr = 1962;	
	
--2. Give year of 'Citizen Kane'.	
	
SELECT yr	
FROM movie	
WHERE title = 'Citizen Kane';	
	
--3. List all of the Star Trek movies, include the id, title and yr (all of these movies start with the words Star Trek in the title). Order results by year.
	
SELECT id, title, yr	
FROM movie	
WHERE title LIKE 'Star Trek%'	
ORDER BY yr;	
	
--4. What id number does the actor 'Glenn Close' have?	
	
SELECT id	
FROM actor	
WHERE name = 'Glenn Close';	
	
--5. What is the id of the 1942 film 'Casablanca'?	
	
SELECT id	
FROM movie	
WHERE title = 'Casablanca'
AND yr = 1942;	

--6. Obtain the cast list for 'Casablanca'.

SELECT actor.name
FROM actor
JOIN casting
ON casting.actorid = actor.id
WHERE casting.movieid = 132689;

--7. Obtain the cast list for the film 'Alien'.

SELECT actor.name
FROM movie
JOIN casting
ON movie.id = casting.movieid
JOIN actor
ON casting.actorid = actor.id
WHERE movie.title = 'Alien';

--8. List the films in which 'Harrison Ford' has appeared.

SELECT movie.title
FROM movie
JOIN casting
ON casting.movieid = movie.id
JOIN actor
ON actor.id = casting.actorid
WHERE actor.name = 'Harrison Ford';

--9. List the films where 'Harrison Ford' has appeared - but not in the starring role.

SELECT DISTINCT movie.title
FROM movie
JOIN casting
ON casting.movieid = movie.id
JOIN actor
ON actor.id = casting.actorid
WHERE actor.name = 'Harrison Ford'
AND casting.ord != 1;