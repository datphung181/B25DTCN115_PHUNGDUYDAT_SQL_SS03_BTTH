CREATE DATABASE sql_session2;
USE sql_session2;

CREATE TABLE products(
	PRO_ID CHAR(5) PRIMARY KEY,
    pro_name VARCHAR(100) NOT NULL,
    size ENUM('L','M','XL','XXL') NOT NULL,
    price BIGINT CHECK (price>=0)
);

INSERT INTO products
VALUES('P01', 'Áo sơ mi trắng', 'L', 250000),
	  ('P02', 'Quần Jean xanh', 'M', 450000),
      ('P03', 'Áo thun Basic', 'XL', 150000);
      

SET sql_safe_updates = 0;
UPDATE products
SET price = price*1.1
WHERE true;

UPDATE products
SET price = 40000
WHERE pro_id='P02';

DELETE FROM products
WHERE pro_id = 'P03';

SELECT pro_name, size 
FROM products
WHERE price>30000;