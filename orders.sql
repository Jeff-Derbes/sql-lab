CREATE TABLE orders(
    person_id INTEGER, 
    order_id SERIAL PRIMARY KEY,
    product_name TEXT,
    product_price FLOAT,
    quantity INTEGER   
);

--add 5 orders to the table 
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Pizza', 12, 1),
(1, 'Beer', 3, 3),
(2, 'Pasta', 17, 1),
(2, 'Wine', 8, 2)
(2, 'Cake', 5, 1)

--select all records
SELECT * FROM orders

--sum number of products ordered 
SELECT SUM(quantity) FROM orders;

--calulate the total order price
SELECT SUM(product_price * quantity) FROM orders;

--calculate the total order price by a single person id
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;--or 1;

