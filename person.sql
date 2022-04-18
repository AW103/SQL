
-- Table creation
CREATE TABLE person(
    name_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    age INTEGER,
    height DECIMAL,
    city VARCHAR(85),
    favorite_color VARCHAR(20)
);

-- Adding data to the table
INSERT INTO person (first_name, age, height, city, favorite_color)
VALUES ('Carter', 25, 170.69, 'Garland', 'Blue'),
('Jennifer', 40, 171, 'Mission', 'Purple'),
('Diego', 27, 185, 'Mission', 'Green'),
('Bobby', 42, 170, 'Tennessee', 'Red'),
('Julia', 18, 155, 'London', 'Lavender');

-- Selecting all the people by height from tallest to shortest
SELECT first_name, height
FROM person
ORDER BY height DESC;


-- Selecting all the people by height from shortest to tallest
SELECT first_name, height
FROM person
ORDER BY height ASC;


-- Selecting all the people by age from oldest to youngest
SELECT first_name, age
FROM person
ORDER BY age DESC;


-- Select all the people in the person table older than age 20.
SELECT first_name, age
FROM person
WHERE age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT first_name, age
FROM person
WHERE age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT first_name, age
FROM person
WHERE age < 20 OR age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT first_name, age
FROM person
WHERE age <> 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT first_name, favorite_color
FROM person
WHERE favorite_color <> 'Red'

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT first_name, favorite_color
FROM person
WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';

-- Select all the people in the person table where their favorite color is orange or green.
SELECT first_name, favorite_color
FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT first_name, favorite_color
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT first_name, favorite_color
FROM person
WHERE favorite_color IN ('Yellow', 'Purple');