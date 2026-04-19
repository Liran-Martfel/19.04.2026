DROP TABLE support_tickts;
CREATE TABLE support_tickts
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	customer_name TEXT,
	priority TEXT,
	issue_score INTEGER
);

INSERT INTO support_tickts (customer_name,priority,issue_score)
VALUES
('Dana', 'high', 95),
('Omer','medium',74),
('Noa','high',88);

SELECT *
FROM support_tickts
WHERE priority = 'medium';

DELETE FROM support_tickts
WHERE id = 3;
SELECT *
FROM support_tickts;


INSERT INTO support_tickts (customer_name,priority,issue_score)
VALUES
('Lital','medium',76);
SELECT *
FROM support_tickts;