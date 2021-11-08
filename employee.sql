--list employees first and last names only that live in Calgary
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

--find the birthdate of the youngest employee 
SELECT MAX(birth_date) from employee;

--find the birthdate of the oldest employee
SELECT MIN(birth_date) from employee;

--find everyone that reports to Nancy Edwards 
SELECT * FROM employee WHERE reports_to = 2;

--count how many people live in lethbridge
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';