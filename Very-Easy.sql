-- Use Database
USE Challenges;

-- Create Table within Database with 4 columns. ID will update automatically
CREATE TABLE cars (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	make VARCHAR (20),
    model VARCHAR (20),
    year DATE
);

-- Insert Data into table
INSERT INTO cars (make, model, year)
VALUES ("Tesla", "Model S", "2012-06-22"), ("Chevrolet", "Camaro", "2004-03-11"), ("Dodge", "Charger", "2008-11-11");

-- Display all data within Table
SELECT * FROM cars;