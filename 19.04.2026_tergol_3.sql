DROP TABLE product_1;
CREATE TABLE product_1 (
  id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL,
  category TEXT NOT NULL,
  price REAL NOT NULL,
  stock INTEGER
);

INSERT INTO product_1 VALUES
  (1, 'Mouse Pro', 'Accessories', 49.0, 20),
  (2, 'Monitor 27', 'Displays', 289.0, 5),
  (3, 'Keyboard Lite', 'Accessories', 39.0, NULL),
  (4, 'Dock Station', 'Accessories', 129.0, 8),
  (5, 'Mini PC', 'Computers', 699.0, 3);
  
  
SELECT product_name FROM product_1
WHERE product_name LIKE '%Pro';

SELECT price FROM product_1
WHERE price BETWEEN 30 AND 150;

SELECT product_name FROM product_1
WHERE category IN ('Computers', 'Displays');

SELECT product_name FROM product_1
WHERE stock IS NOT NULL;

SELECT product_name FROM product_1
WHERE product_name GLOB 'M?* *';