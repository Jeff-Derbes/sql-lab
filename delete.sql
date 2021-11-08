INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- create animals table
CREATE TABLE animals ( 
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50), 
    type TEXT, 
    age INTEGER 
);

--run the commented code 


--select from animals 


--delete all lion entries
DELETE 
FROM animals
WHERE type = 'lion';


--delete all animals that start with M
DELETE 
FROM animals
WHERE name LIKE 'M%';

--delete all entries whose age is less than 9
DELETE 
FROM animals
WHERE age < 9;