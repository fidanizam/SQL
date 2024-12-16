CREATE TABLE namess(namee VARCHAR(200) NOT NULL );
SELECT * FROM namess;

INSERT INTO namess(namee) VALUES ('rAVI kUMAR');
INSERT INTO namess(namee) VALUES ('priya sharma');
INSERT INTO namess(namee) VALUES ('amit PATEL');
INSERT INTO namess(namee) VALUES ('NEHA gupta');

UPDATE namess
SET namee = initcap(TRIM(namee));