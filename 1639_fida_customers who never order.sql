CREATE TABLE customers(id INT NOT NULL,customer_name VARCHAR(200) NOT NULL,PRIMARY KEY(id));
SELECT * FROM customers;
INSERT INTO customers(id,customer_name) VALUES ('1','Joe');
INSERT INTO customers(id,customer_name) VALUES ('2','Henry');
INSERT INTO customers(id,customer_name) VALUES ('3','Sam');
INSERT INTO customers(id,customer_name) VALUES ('4','Max');

CREATE TABLE orders(id INT NOT NULL,customerid INT NOT NULL,PRIMARY KEY(id),FOREIGN KEY (customerid) REFERENCES customers(id));
SELECT* FROM orders;
INSERT INTO orders(id,customerid) VALUES ('2','1');
INSERT INTO orders(id,customerid) VALUES ('1','3');

SELECT customer_name FROM customers WHERE id NOT IN (SELECT customerid FROM orders);

