CREATE OR REPLACE PROCEDURE initialize_readonly_role()
LANGUAGE plpgsql
AS $$
BEGIN
	-- Readonly role
	-- Initialize role
	-- -- If role does not exist yet
	-- CREATE ROLE role_istd_trainee; 

	-- -- If user does not exist yet
	-- CREATE ROLE user_istd_trainee_1 WITH LOGIN PASSWORD 'pwd123'; 

	-- -- If user is already created
	-- ALTER ROLE user_istd_trainee_1 WITH LOGIN PASSWORD 'pwd123'; 

	GRANT CONNECT ON DATABASE tmmin_training_db TO role_istd_trainee;
	GRANT USAGE ON SCHEMA istd TO role_istd_trainee;
	GRANT SELECT ON TABLE istd.positions TO role_istd_trainee;
	GRANT SELECT ON TABLE istd.employees TO role_istd_trainee;
	GRANT SELECT ON TABLE istd.inventories TO role_istd_trainee;
	GRANT SELECT ON TABLE istd.inventory_assignment_logs TO role_istd_trainee;


	-- Default Privileges
	-- ALTER SCHEMA istd OWNER TO postgres;

	ALTER DEFAULT PRIVILEGES
	FOR ROLE role_istd_trainee
	IN SCHEMA istd
	GRANT SELECT, INSERT, UPDATE ON TABLES TO role_istd_trainee;


	-- Create user with password and assign to role
	GRANT CONNECT ON DATABASE tmmin_training_db TO user_istd_trainee_1;
	-- GRANT role_istd_trainee TO user_istd_trainee_1;
END;
$$;
