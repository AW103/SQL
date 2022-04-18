CREATE table(
animal_id SERIAL primary key,
animal_name VARCHAR(30),
animal_type VARCHAR(30),
animal_age INT
)

INSERT INTO animals ( animal_name, animal_type, animal_age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- Delete all ‘lion’ entries from the table.
DELETE
FROM animals
WHERE animal_type = 'lion';
-- Delete all animals whose names start with “M”.
DELETE
FROM animals
WHERE animal_name LIKE 'M%';
-- Delete all entries whose age is less than 9.
DELETE
FROM animals
WHERE animal_age < 9;