/*Películas*/

SELECT * FROM Netflix.movies;

SELECT title, genre 
	FROM movies
    WHERE year > 1990;
    
SELECT *
	FROM movies
    WHERE category = 'Top 10';
    
UPDATE movies
	SET year = 1997
    WHERE idmovies = 2;


/*Actores*/

SELECT * FROM Netflix.actors;

SELECT * 
	FROM actors
    WHERE birthday
    BETWEEN '1950-01-01' AND '1960-01-01';

SELECT name, lastname
	FROM actors
    WHERE country = 'Estados Unidos';
    
SELECT * FROM Netflix.users;


/*Usuarios*/

SELECT *
	FROM users
    WHERE plan_details = 'Standard';

DELETE FROM users
WHERE name LIKE 'M%';

/*Desactivar modo seguro para eliminar*/
SET SQL_SAFE_UPDATES = 0;

/*Activar modo seguro*/
SET SQL_SAFE_UPDATES = 1;