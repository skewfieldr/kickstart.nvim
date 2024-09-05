CREATE OR REPLACE PROCEDURE istd.assign_inventory(
	p_assignee_employee_id int
	,p_assignor_employee_id int
	,p_inventory_id int
)
LANGUAGE plpgsql
AS $$
BEGIN
	-- Start transaction
	-- BEGIN
	RAISE NOTICE '[INFO] Begin execution';
	RAISE NOTICE '[DEBUG] inv id %s', p_inventory_id;
	IF p_assignor_employee_id != 11 THEN 
		RAISE NOTICE 'Assignor is unauthorized';
		ROLLBACK;
		RETURN;
	END IF;


	INSERT INTO istd.inventory_assignment_logs (
		assignee_employee_id
		,assignor_employee_id
		,inventory_id
		,assignment_type
		,is_active
		,created_at
		,created_by
	)
	VALUES (
		p_assignee_employee_id -- assignee_employee_id
		,p_assignor_employee_id -- assignor_employee_id
		,p_inventory_id -- inventory_id
		,'Assigned' -- assignment_type
		,TRUE -- is_active
		,NOW() -- assigned_at
		,'SYSTEM'
	);
	RAISE NOTICE '[INFO] Success insert inventory assignment log';
	-- COMMIT;

	IF EXISTS (SELECT 1 FROM istd.inventories t1 WHERE t1.id = p_inventory_id AND COALESCE(t1.assignee_employee_id, 0) = 0) 
	THEN
		UPDATE istd.inventories
		SET 
			assignee_employee_id = p_assignee_employee_id
		WHERE id = p_inventory_id;
		RAISE NOTICE '[INFO] Success update inventories table';
	ELSE 
		RAISE NOTICE '[ERROR] Inventory is already assigned to an employee';
		ROLLBACK;
		RETURN;
	END IF;

	-- Commit transaction
	COMMIT;
	RAISE NOTICE '[INFO] Execution finished successfully';
END;
$$;

