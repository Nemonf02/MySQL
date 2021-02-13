-- Use Database
USE Challenges;

-- Create Table
CREATE TABLE top_movies (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (220),
    release_date DATE,
    rating DECIMAL (2, 1)
);

-- Insert Data into table
INSERT INTO top_movies (title, release_date, rating)
VALUES 
("The Godfather", "1972-03-24", 9.2),
("The Karate Kid Part III", "1989-06-30", 5.3),
("Jumanji: Level One", "2021-01-20", 5.0),
("The Dark Knight", "2008-07-18", 9.0),
("Interstellar", "2014-11-07", 8.6),
("Joker", "2019-10-04", 8.5),
("Pulp Fiction", "1994-10-14", 8.9),
("Avengers: Infinity War", "2018-04-27", 8.4),
("Forrest Gump", "1994-07-06", 8.8),
("Avengers: Age of Ultron", "2015-05-1", 7.3);

-- Alter table by adding two new columns
ALTER TABLE top_movies
ADD first_name VARCHAR(220),
ADD last_name VARCHAR (220);

-- Update for all movies
UPDATE top_movies
SET first_name="Francis", last_name="Coppola"
WHERE id = 1;

UPDATE top_movies
SET first_name="John", last_name="Avildsen"
WHERE id = 2;

UPDATE top_movies
SET first_name="Lance", last_name="Kawas"
WHERE id = 3;

UPDATE top_movies
SET first_name="Christopher", last_name="Nolan"
WHERE id = 4;

UPDATE top_movies
SET first_name="Christopher", last_name="Nolan"
WHERE id = 5;

UPDATE top_movies
SET first_name="Todd", last_name="Phillips"
WHERE id = 6;

UPDATE top_movies
SET first_name="Quentin", last_name="Tarantino"
WHERE id = 7;

UPDATE top_movies
SET first_name="Joe", last_name="Russo"
WHERE id = 8;

UPDATE top_movies
SET first_name="Robert", last_name="Zemeckis"
WHERE id = 9;

UPDATE top_movies
SET first_name="Joseph", last_name="Whedon"
WHERE id = 10;

-- Concat first name and last name to create full name
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM top_movies;

-- Ordering by last name alphabetically
SELECT * FROM top_movies
ORDER BY last_name;

-- Deletes movies where the last name is between R-Z alphabetically
DELETE FROM top_movies
WHERE last_name BETWEEN "R" AND "Z";

-- Order by last name then display the first 3 entries
SELECT * FROM top_movies
ORDER BY last_name
LIMIT 3;