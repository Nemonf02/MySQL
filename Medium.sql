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

-- Display all data sorted in descending order within Table where the title contains the letter s
SELECT * FROM top_movies
WHERE title LIKE "%s%"
ORDER BY release_date DESC;
