CREATE TABLE performance(adid INT NOT NULL,viewss INT NOT NULL,clicks INT NOT NULL,costs INT NOT NULL);
SELECT * FROM performance;
INSERT INTO performance(adid,viewss,clicks,costs) VALUES (1,1000,50,20.5);
INSERT INTO performance(adid,viewss,clicks,costs) VALUES (2,800,30,15.2);
INSERT INTO performance(adid,viewss,clicks,costs) VALUES (3,1200,80,25.7);
INSERT INTO performance(adid,viewss,clicks,costs) VALUES (4,600,20,10.9);
INSERT INTO performance(adid,viewss,clicks,costs) VALUES (5,1500,120,40.3);

SELECT 
    adid,
    CONCAT(ROUND((clicks * 100.0) / viewss, 1), '%') AS CTR,
    viewss,
    clicks,
    costs
FROM 
    performance
ORDER BY 
    CTR DESC; 


