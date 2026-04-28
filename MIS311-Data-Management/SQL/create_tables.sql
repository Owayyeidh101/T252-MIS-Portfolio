CREATE TABLE PLANT_AREA (
    area_id INT PRIMARY KEY,
    area_name VARCHAR(50) NOT NULL,
    area_description VARCHAR(100)
);

CREATE TABLE MAINTENANCE_TYPE (
    maintenance_type_id INT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL,
    type_description VARCHAR(100)
);

CREATE TABLE TECHNICIAN (
    technician_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    specialization VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE SUPPLIER (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50) NOT NULL,
    contact_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50)
);

CREATE TABLE EQUIPMENT (
    equipment_id INT PRIMARY KEY,
    equipment_name VARCHAR(50) NOT NULL,
    equipment_type VARCHAR(50),
    installation_date DATE,
    equipment_status VARCHAR(20),
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES PLANT_AREA(area_id)
);

CREATE TABLE PART (
    part_id INT PRIMARY KEY,
    part_name VARCHAR(50) NOT NULL,
    unit_cost DECIMAL(8,2),
    quantity_on_hand INT,
    minimum_quantity INT,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES SUPPLIER(supplier_id)
);

CREATE TABLE WORK_ORDER (
    work_order_id INT PRIMARY KEY,
    request_date DATE,
    scheduled_date DATE,
    completion_date DATE,
    priority VARCHAR(20),
    status VARCHAR(20),
    work_description VARCHAR(100),
    equipment_id INT,
    maintenance_type_id INT,
    FOREIGN KEY (equipment_id) REFERENCES EQUIPMENT(equipment_id),
    FOREIGN KEY (maintenance_type_id) REFERENCES MAINTENANCE_TYPE(maintenance_type_id)
);

CREATE TABLE WORK_ORDER_ASSIGNMENT (
    work_order_id INT,
    technician_id INT,
    assigned_date DATE,
    hours_worked DECIMAL(5,2),
    assignment_role VARCHAR(50),
    PRIMARY KEY (work_order_id, technician_id),
    FOREIGN KEY (work_order_id) REFERENCES WORK_ORDER(work_order_id),
    FOREIGN KEY (technician_id) REFERENCES TECHNICIAN(technician_id)
);

CREATE TABLE WORK_ORDER_PART (
    work_order_id INT,
    part_id INT,
    quantity_used INT,
    usage_date DATE,
    PRIMARY KEY (work_order_id, part_id),
    FOREIGN KEY (work_order_id) REFERENCES WORK_ORDER(work_order_id),
    FOREIGN KEY (part_id) REFERENCES PART(part_id)
);