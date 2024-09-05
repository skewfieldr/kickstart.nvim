-- SELECT id
-- 	, employee_code
-- 	, position_id
-- 	, name
-- 	, date_of_birth
-- 	, joined_date
-- 	, status
-- FROM istd.employees;
--
-- SELECT id
-- 	, name
-- 	, is_active 
-- FROM istd.positions;
--
SELECT id
	, code
	, name
	, type
	, brand
	, assignee_employee_id
	, is_active 
FROM istd.inventories;

-- DELETE FROM istd.inventory_assignment_logs;
