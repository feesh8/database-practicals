--2. Le temps d'execution d'une requete

SELECT c.name FROM customer c, facture f WHERE f.customerId=c.customerId AND f.amount>1000;
SELECT name FROM customer WHERE customerID IN (SELECT f.customerId FROM facture f WHERE amount>1000);
SELECT name FROM (customer NATURAL JOIN facture) WHERE amount>1000;
SELECT name FROM customer WHERE customerId IN (SELECT c.customerId FROM customer c, facture f WHERE c.customerId=f.customerId AND f.amount>1000);

CREATE INDEX customerIDX ON customer(customerId);
DROP INDEX customerID;

--3. Experimentation

SELECT * FROM customer c JOIN facture f ON f.customerId = c.customerId ORDER BY name LIMIT 10;

CREATE INDEX customerIDX ON customer(customerId);
CREATE INDEX customernameIDX ON customer(name);
