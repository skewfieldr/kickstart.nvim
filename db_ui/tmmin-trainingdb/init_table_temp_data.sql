
-- Insert query for table istd.positions_temp_temp
INSERT INTO istd.positions_temp (name, is_active, created_at, created_by, modified_at, modified_by )
VALUES 
	('Head of Department', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('System Analyst Jr. I', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('System Analyst Jr. II', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('System Analyst Sr. I', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('System Analyst Sr. II', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('Database Analyst Jr. I', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('Database Analyst Jr. II', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('Database Analyst Sr. I', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('Project Manager Jr. I', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('Project Manager Jr. II', TRUE, NOW(), 'SYSTEM', NULL, NULL)
	,('Inventory Administrator', TRUE, NOW(), 'SYSTEM', NULL, NULL);


-- Insert query for table istd.employees_temp
INSERT INTO istd.employees_temp (position_id , name , date_of_birth , joined_date , status , status_remarks , created_at , created_by , modified_at , modified_by)
VALUES
	(1, 'Tegar', DATE('1975-01-01'), DATE('2010-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(2, 'Budiono Siregar', DATE('1993-03-05'), DATE('2010-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(4, 'Ahmad Jalaluddin', DATE('1986-08-14'), DATE('2007-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(7, 'Muhammad Sumbul', DATE('1990-06-20'), DATE('2018-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(3, 'Khalid Kashmiri', DATE('1990-01-04'), DATE('2007-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(3, 'Arif Budiman', DATE('1991-06-05'), DATE('2011-01-16'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(10, 'Budi Arifin', DATE('1986-08-02'), DATE('2013-02-13'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(2, 'Chairil Anwar', DATE('1995-05-01'), DATE('2018-10-22'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(5, 'Chairil Anwar', DATE('1982-07-06'), DATE('2010-05-22'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(11, 'Chairil Anwar', DATE('1982-07-06'), DATE('2010-05-22'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(8, 'Sumail', DATE('1983-08-01'), DATE('2013-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(9, 'Suparman', DATE('1990-02-02'), DATE('2015-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(8, 'Ahmad Zaelani', DATE('1977-12-20'), DATE('2011-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL)
	,(6, 'David Kurniawan', DATE('1976-03-02'), DATE('2019-03-19'), 'Active', NULL, NOW(), 'SYSTEM', NULL, NULL);

-- Insert query for istd.inventories
INSERT INTO istd.inventories_temp ( 
	name
	, type
	, brand
	, is_active
	, created_at
	, created_by
	, modified_at
	, modified_by
	, assignee_employee_id
	)
VALUES
	-- ('Laptop HP Type 1 Pro', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL, NULL, NULL)
	('Laptop HP Type 2 Pro', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 2 Pro', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 2 Pro', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 2 Pro', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Monitor LG Type 2 21inch', 'Monitor', 'LG', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Monitor LG Type 2 21inch', 'Monitor', 'LG', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Monitor LG Type 2 21inch', 'Monitor', 'LG', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Monitor LG Type 2 21inch', 'Monitor', 'LG', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Monitor LG Type 2 21inch', 'Monitor', 'LG', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Monitor LG Type 2 21inch', 'Monitor', 'LG', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Headphone Logitech Series ABC', 'Headphone', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Headphone Logitech Series ABC', 'Headphone', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Headphone Logitech Series ABC', 'Headphone', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Headphone Logitech Series ABC', 'Headphone', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Headphone Logitech Series ABC', 'Headphone', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Headphone Logitech Series ABC', 'Headphone', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I Community', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I Community', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Mouse Logitech Wireless I Community', 'Mouse', 'Logitech', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 1', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL)
	,('Laptop HP Type 3', 'Laptop', 'HP', TRUE, NOW(), 'SYSTEM', NULL, NULL, NULL);




