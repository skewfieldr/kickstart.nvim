DROP TABLE IF EXISTS istd.inventory_assignment_logs;
DROP TABLE IF EXISTS istd.inventories;
DROP TABLE IF EXISTS istd.employees;
DROP TABLE IF EXISTS istd.positions;

DROP TABLE IF EXISTS istd.positions;
CREATE TABLE istd.positions (
	id SERIAL PRIMARY KEY
	, name VARCHAR(100)
	, is_active BOOL DEFAULT TRUE
	, created_at TIMESTAMP NOT NULL
	, created_by VARCHAR(100) NOT NULL
	, modified_at TIMESTAMP NULL
	, modified_by VARCHAR(100) NULL
);

DROP TABLE IF EXISTS istd.employees;
CREATE TABLE istd.employees (
	id SERIAL PRIMARY KEY
	, employee_code VARCHAR(100) GENERATED ALWAYS AS (
		'ISTD' || LPAD(id::VARCHAR(100), 5, '0') 
	) STORED
	, position_id INT
	, name VARCHAR(100) NOT NULL
	, date_of_birth DATE NULL
	, joined_date DATE NOT NULL
	-- , religion VARCHAR(50) NULL
	-- , is_married BOOL DEFAULT FALSE
	-- , address VARCHAR(50) NULL
	, status VARCHAR(50) DEFAULT 'Active'
	, status_remarks VARCHAR(200) NULL
	, created_at TIMESTAMP NOT NULL
	, created_by VARCHAR(100) NOT NULL
	, modified_at TIMESTAMP NULL
	, modified_by VARCHAR(100) NULL
	, CONSTRAINT fk_position 
		FOREIGN KEY(position_id) 
		REFERENCES istd.positions(id)
);


DROP TABLE IF EXISTS istd.inventories;
CREATE TABLE istd.inventories (
	id SERIAL PRIMARY KEY
	, code VARCHAR(100) GENERATED ALWAYS AS (
		'INV_' || LPAD(id::VARCHAR(100), 10, '0') 
	) STORED
	, name VARCHAR(100)
	, type VARCHAR(100)
	, brand VARCHAR(100)
	, is_active BOOL DEFAULT TRUE
	, created_at TIMESTAMP NOT NULL
	, created_by VARCHAR(100) NOT NULL
	, modified_at TIMESTAMP NULL
	, modified_by VARCHAR(100) NULL
);
ALTER TABLE istd.inventories
ADD COLUMN assignee_employee_id INT CONSTRAINT fk_assignee_employee REFERENCES istd.employees(id);

DROP TABLE IF EXISTS istd.inventory_assignment_logs;
CREATE TABLE istd.inventory_assignment_logs (
	id SERIAL PRIMARY KEY
	, inventory_id INT
	, is_active BOOL DEFAULT TRUE
	, created_at TIMESTAMP NOT NULL
	, created_by VARCHAR(100) NOT NULL
	, CONSTRAINT fk_inventory 
		FOREIGN KEY(inventory_id) 
		REFERENCES istd.inventories(id)
);
ALTER TABLE istd.inventory_assignment_logs
ADD COLUMN assignee_employee_id INT CONSTRAINT fk_assignee_employee REFERENCES istd.employees(id);

ALTER TABLE istd.inventory_assignment_logs
ADD COLUMN assignor_employee_id INT CONSTRAINT fk_assignor_employee REFERENCES istd.employees(id);

ALTER TABLE istd.inventory_assignment_logs
ADD COLUMN assignment_type VARCHAR(30);
