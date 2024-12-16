CREATE TABLE users (users_id SERIAL PRIMARY KEY,banned VARCHAR(3),ROLE VARCHAR(10));
SELECT * FROM users;
INSERT INTO users (users_id, banned, ROLE) VALUES
(1, 'No', 'client'),
(2, 'Yes', 'client'),
(3, 'No', 'client'),
(4, 'No', 'client'),
(10, 'No', 'driver'),
(11, 'No', 'driver'),
(12, 'No', 'driver'),
(13, 'No', 'driver');

CREATE TABLE Trips (
    id INT PRIMARY KEY,           
    client_id INT NOT NULL,       
    driver_id INT NOT NULL,       
    city_id INT NOT NULL,         
    status VARCHAR(50) NOT NULL,  
    request_at DATE NOT NULL,     
    FOREIGN KEY (client_id) REFERENCES Users(users_id), 
    FOREIGN KEY (driver_id) REFERENCES Users(users_id)  
);
SELECT * FROM Trips;
INSERT INTO Trips (id, client_id, driver_id, city_id, status, request_at) VALUES
(1, 1, 10, 1, 'completed', '2023-07-12'),
(2, 2, 11, 1, 'cancelled_by_driver', '2023-07-12'),
(3, 3, 12, 6, 'completed', '2023-07-12'),
(4, 4, 13, 6, 'cancelled_by_client', '2023-07-12'),
(5, 1, 10, 1, 'completed', '2023-07-13'),
(6, 2, 11, 6, 'completed', '2023-07-13'),
(7, 3, 12, 6, 'completed', '2023-07-13'),
(8, 2, 12, 12, 'completed', '2023-07-14'),
(9, 3, 10, 12, 'completed', '2023-07-14'),
(10, 4, 13, 12, 'cancelled_by_driver', '2023-07-14');

SELECT 
    t.request_at AS DAY,
    ROUND(SUM(CASE WHEN t.status IN ('cancelled_by_driver', 'cancelled_by_client') THEN 1 ELSE 0 END)::NUMERIC 
          / COUNT(*)::NUMERIC, 2) AS cancellation_rate
FROM Trips t
JOIN Users u_client ON t.client_id = u_client.users_id AND u_client.banned = 'No'
JOIN Users u_driver ON t.driver_id = u_driver.users_id AND u_driver.banned = 'No'
GROUP BY t.request_at
ORDER BY t.request_at;
