-- FInd all customers with fax numbers and set those to null
UPDATE customer
SET fax = null
WHERE fax IS NOT null;

--find all customers with no company and set their company to self
UPDATE customer
SET company = 'Self'
WHERE company IS null;

--find the customer julia barnett and changer her last name to thompson 
UPDATE customer 
SET last_name = 'Thompson' 
WHERE first_name = 'Julia' AND last_name = 'Barnett';

--find the customer with this emiail luisrojas@yahoo.cl and change his support rep to 4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

--find all tracks that are the genre metal and have no composer. set composer to the darkness around us
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;