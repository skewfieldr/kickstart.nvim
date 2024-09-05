-- 	id SERIAL PRIMARY KEY
-- 	,user_id INT REFERENCES users(id)
-- 	,product_id INT REFERENCES products(id) 
-- );

-- ALTER TABLE orders
-- ADD COLUMN order_date TIMESTAMP;

-- SELECT CONCAT('xc', to_char(price, '00000000')) as X FROM products;
-- SELECT DATE_PART('year', CAST(order_date as DATE)) FROM orders;
-- SELECT CONCAT(
-- 	'PN-'
-- 	, EXTRACT(YEAR from order_date)
-- 	, LPAD(EXTRACT(MONTH from order_date)::text, 2, '0')
-- 	, LPAD(id::text, 6, '0')
-- ) as X 
-- FROM orders;

-- ALTER TABLE orders
-- ADD COLUMN order_code 
-- TEXT GENERATED ALWAYS 
-- AS ( 
-- 	'PN-' 
-- 	|| RIGHT(EXTRACT(YEAR from order_date)::text, 2) 
-- 	|| LPAD(EXTRACT(MONTH from order_date)::text, 2, '0') 
-- 	|| LPAD(EXTRACT(DAY from order_date)::text, 2, '0') 
-- 	|| LPAD(id::text, 6, '0') 
-- )
-- STORED;

-- INSERT INTO orders (user_id, product_id, order_date)
-- VALUES 
-- 	(1,1, '2024-08-06'),
-- 	(1,2, '2024-08-06'),
-- 	(1,3, '2024-08-06'),
-- 	(1,5, '2024-08-05'),
-- 	(1,2, '2024-08-05'),
-- 	(2,1, '2024-08-06'),
-- 	(3,5, '2024-08-04'),
-- 	(6,5, '2024-08-06'),
-- 	(2,4, '2024-08-04'),
-- 	(2,3, '2024-08-04'),
-- 	(3,4, '2024-08-03'),
-- 	(4,5, '2024-08-05'),
-- 	(5,6, '2024-08-05'),
-- 	(6,7, '2024-08-04'),
-- 	(7,7, '2024-08-03'),
-- 	(2,5, '2024-08-04'),
-- 	(3,6, '2024-08-05'),
-- 	(5,1, '2024-08-05'),
-- 	(7,2, '2024-08-05'),
-- 	(7,1, '2024-08-05'),
-- 	(5,3, '2024-08-05');
--
-- SELECT * FROM users;
--  id |   name    |           email           |         dob         
-- ----+-----------+---------------------------+---------------------
--   1 | Shimajiro | shimajiro@examplemail.com | 1994-03-07 22:00:00
--   2 | Flappy    | flappy@examplemail.com    | 2007-07-07 22:00:00
--   3 | Bird      | bird@examplemail.com      | 2007-07-07 22:00:00
--   4 | Mimilin   | mimilin@examplemail.com   | 2006-07-07 22:00:00
--   5 | Niki      | niki@examplemail.com      | 2006-07-07 22:00:00
--   6 | Nisuke    | nisuke@examplemail.com    | 2000-07-07 22:00:00
--   7 | Shimano   | shimano@examplemail.com   | 1977-07-07 22:00:00

-- SELECT * FROM products;
--  id |    name    | price 
-- ----+------------+-------
--   1 | feast      |  5000
--   2 | conello    |  7000
--   3 | creampy    |  3800
--   4 | crepes     |  3600
--   5 | paddle pop |  3500
--   6 | alamii     |  4000
--   7 | chiito     |  7000
--   8 | tahu bulat |   500

SELECT 
	a.id AS orderid
	, a.order_code
	, b.name AS username
	-- b.name AS username
	, c.name AS productname
	-- , COUNT(c.name) AS totalproductbuy
	-- , a.order_date 
FROM orders AS a
INNER JOIN users AS b ON a.user_id = b.id
INNER JOIN products AS c ON a.product_id = c.id
WHERE True
-- GROUP BY b.name, c.name
ORDER BY b.name ASC, c.name DESC
LIMIT 100;

