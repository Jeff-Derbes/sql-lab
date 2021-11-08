--Create a table
CREATE TABLE person(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(40) NOT NULL,
    age INTEGER,
    height INTEGER,
    city VARCHAR(50),
    favorite_color text
);

--Add 5 people into person table
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Taylor', 27, 165, 'Lafayette', 'green'),
('Jeff', 24, 177, 'Lafayette', 'purple'),
('Ellie', 0, 76, 'Lafayette', 'blue'),
('Erin', 23, 160, 'Slidell', 'red'),
('German', 25, 170, 'Lafayette', 'blue');

--select by height from tallest to shortes
SELECT * FROM person 
ORDER BY height DESC

--select by height from shortest to tallest 
SELECT * FROM person 
ORDER BY height 

--select by age oldest to youngest
SELECT * FROM person 
ORDER BY age desc

--select by age older than 20
SELECT * FROM person WHERE age > 20

--select by age that is exactly 18
SELECT * FROM person WHERE age = 18

--select by age less than 20 and older than 30
SELECT * FROM person WHERE age < 20 OR age > 30

--select by age not equal to 27
SELECT * FROM person WHERE age != 27

--select by favorite color not equal to red
SELECT * FROM person WHERE favorite_color != 'red'

--select by favorite color not equal to red or blue
SELECT * FROM person WHERE favorite_color != 'red' and favorite_color != 'blue'

--select by favorite color equal to orange or green
SELECT * FROM person WHERE favorite_color = 'orange' or favorite_color = 'green'

--Select where favorite color is orange, green, or blue using in
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

--select where favorite color is yellow or purple
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');