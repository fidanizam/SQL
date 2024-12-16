CREATE TABLE sale(customer_id INT NOT NULL,product_id VARCHAR(200) NOT NULL,purchase_date date NOT NULL,quantity INT NOT NULL,revenue FLOAT  NOT NULL);
SELECT * FROM sale;
INSERT INTO sale(customer_id,product_id,purchase_date,quantity,revenue) VALUES ('1','A','2023-01-01','5','100.00');
INSERT INTO sale(customer_id,product_id,purchase_date,quantity,revenue) VALUES ('2','B','2023-01-02','3','50.00');
INSERT INTO sale(customer_id,product_id,purchase_date,quantity,revenue) VALUES ('3','A','2023-01-03','2','30.00');
INSERT INTO sale(customer_id,product_id,purchase_date,quantity,revenue) VALUES ('4','C','2023-01-03','1','20.00');
INSERT INTO sale(customer_id,product_id,purchase_date,quantity,revenue) VALUES ('1','B','2023-01-04','4','80.00');

SELECT product_id,sum(revenue) AS TotalRevenue,sum(quantity) AS Total_quantity FROM sale GROUP BY product_id;

SELECT customer_id,sum(revenue) AS TotalRevenue FROM sale GROUP BY customer_id ORDER BY customer_id ASC;



