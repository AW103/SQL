
-- Adding new artists
INSERT INTO artist(artist_id, name)
VALUES(276, 'Damien Rice'),
(277, 'Hans Zimmer'),
(278, 'MF DOOM');

-- Select 10 artists in reverse alphabetical order.
SELECT artist_id, name FROM artist
WHERE artist_id BETWEEN 156 AND 166
ORDER BY name DESC;

-- Select 5 artists in alphabetical order.
SELECT artist_id, name FROM artist
WHERE artist_id BETWEEN 125 AND 130
ORDER BY name ASC;

-- Select all artists that start with the word ‘Black’.
SELECT name FROM artist
WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.

SELECT name FROM artist
WHERE name LIKE '%Black%';