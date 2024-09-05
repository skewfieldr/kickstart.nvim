---- Example: Function returning one value
-- CREATE OR REPLACE FUNCTION istd.inventory_is_exist(p_id integer) RETURNS BOOLEAN
--     LANGUAGE plpgsql
--     IMMUTABLE
-- AS $$
-- BEGIN
--     RETURN EXISTS(SELECT 1 FROM istd.inventories WHERE id = p_id);
-- END
-- $$;
    -- SELECT EXISTS(SELECT 1 FROM istd.inventories WHERE id = 5);
SELECT istd.inventory_is_exist(1)
----
---- Example: Function returning multiple / table-like values
-- CREATE OR REPLACE FUNCTION istd.get_inventories_by_assignee_id(employee_id integer) 
-- RETURNS TABLE(inventory_id int
--     , inventory_name VARCHAR(100)
--     , assignee VARCHAR(100)
--     , assignee_id INT) 
-- LANGUAGE plpgsql
-- AS $$
-- BEGIN
--     RETURN QUERY 
--     SELECT t1.id as inventory_id
-- 	,t1.name as inventory_name
-- 	,t2.name as assignee 
-- 	,t2.id as assignee_id
--     FROM istd.inventories t1
--     INNER JOIN istd.employees t2 ON t1.assignee_employee_id = t2.id
--     WHERE t2.id = employee_id;
-- END;
-- $$;
--

-- SELECT * FROM istd.get_inventories_by_assignee_id(9)


---- Example: View
-- CREATE VIEW istd.get_inventories_with_assignee AS 
-- SELECT t1.id as inventory_id
--     ,t1.name as inventory_name
--     ,t2.name as assignee 
--     ,t2.id as assignee_id
-- FROM istd.inventories t1
-- INNER JOIN istd.employees t2 ON t1.assignee_employee_id = t2.id
-- ORDER BY t1.created_at DESC;

-- SELECT * FROM istd.get_inventories_with_assignee;
----
