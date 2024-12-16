CREATE TABLE duplicates(id INT NOT NULL,namess VARCHAR(100) NOT NULL,email VARCHAR(100) NOT NULL,phone VARCHAR(100)NOT NULL);
SELECT * FROM duplicates;
INSERT INTO duplicates(id,namess,email,phone) VALUES (1,'Rahul','rahul@exmple.com','9839473902');
INSERT INTO duplicates(id,namess,email,phone) VALUES (2,'Rohit','rohit@example.com','9883782971');
INSERT INTO duplicates(id,namess,email,phone) VALUES(3, 'Suresh', 'rahul@example.com', '7654321098');
INSERT INTO duplicates(id,namess,email,phone) VALUES(4, 'Manish', 'manish@example.com', '8927394619');
INSERT INTO duplicates(id,namess,email,phone) VALUES(5, 'Amit', 'amit@example.com', '9399303840');
INSERT INTO duplicates(id,namess,email,phone) VALUES(6, 'Rahul', 'rahul@example.com', '9737466147');

DELETE FROM duplicates
WHERE id NOT IN (
    SELECT AVG(id)
    FROM duplicates
    GROUP BY email
);











