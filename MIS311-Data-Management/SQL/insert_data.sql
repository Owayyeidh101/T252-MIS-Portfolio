-- PLANT_AREA
INSERT INTO PLANT_AREA VALUES (1, 'Area A', 'Assembly Section');
INSERT INTO PLANT_AREA VALUES (2, 'Area B', 'Packaging Section');

-- MAINTENANCE_TYPE
INSERT INTO MAINTENANCE_TYPE VALUES (1, 'Preventive', 'Routine check');
INSERT INTO MAINTENANCE_TYPE VALUES (2, 'Corrective', 'Fix issue');

-- TECHNICIAN
INSERT INTO TECHNICIAN VALUES (1, 'Ali', 'Hassan', 'Electrical', '0501234567');
INSERT INTO TECHNICIAN VALUES (2, 'Omar', 'Saleh', 'Mechanical', '0509876543');

-- SUPPLIER
INSERT INTO SUPPLIER VALUES (1, 'ABC Supplies', 'Khalid', '0511111111', 'abc@mail.com');

-- EQUIPMENT (fixed date)
INSERT INTO EQUIPMENT
VALUES (1, 'Pump A', 'Pump', TO_DATE('2020-01-01','YYYY-MM-DD'), 'Active', 1);

-- PART
INSERT INTO PART VALUES (1, 'Valve', 50.00, 20, 5, 1);

-- WORK_ORDER (fixed dates)
INSERT INTO WORK_ORDER
VALUES (
    1,
    TO_DATE('2024-01-01','YYYY-MM-DD'),
    TO_DATE('2024-01-02','YYYY-MM-DD'),
    NULL,
    'High',
    'Open',
    'Fix leak',
    1,
    2
);

-- WORK_ORDER_ASSIGNMENT (fixed date)
INSERT INTO WORK_ORDER_ASSIGNMENT
VALUES (1, 1, TO_DATE('2024-01-02','YYYY-MM-DD'), 3.5, 'Lead');

-- WORK_ORDER_PART (fixed date)
INSERT INTO WORK_ORDER_PART
VALUES (1, 1, 2, TO_DATE('2024-01-02','YYYY-MM-DD'));