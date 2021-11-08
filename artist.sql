--insert new artists, 
INSERT INTO artist(name) 
VALUES ('Thank You Scientists'),
('Saba'),
('Knocked Loose');

-- select 10 artists in reverse alphabetical order 
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

--select 5 artists in alphabetical order
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

--select artists that start with the word black
SELECT * FROM artist WHERE name LIKE 'Black%';

--select artists that contain the word black
SELECT * FROM artist WHERE name LIKE '%Black%'