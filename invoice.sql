--count how many oders were made from the usa
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

--find the largest order total amount
SELECT MAX(total) FROM invoice;

--find the smallest order total amount
SELECT MIN(total) FROM invoice;

--find all orders bigger than $5
SELECT * FROM invoice WHERE total > 5;

--count how many orders were smaller than $5
SELECT COUNT(*) FROM invoice WHERE total < 5;

--Count how many orders were in CA, TX, or AZ
select COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

--get the average total of the orders
SELECT AVG(total) FROM invoice;

--get the sum total of the orders 
SELECT SUM(total) FROM invoice;

--update the invoice with an invoice_id of 5 to have a total order amount of 24
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

--delete the invoice with an invoice id of 1
--Kept getting violates foreign key constraint error


