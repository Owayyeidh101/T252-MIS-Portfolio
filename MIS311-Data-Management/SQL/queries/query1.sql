SELECT 
    wo.work_order_id,
    wo.status,
    wo.priority,
    e.equipment_name,
    pa.area_name,
    wo.work_description
FROM WORK_ORDER wo
JOIN EQUIPMENT e ON wo.equipment_id = e.equipment_id
JOIN PLANT_AREA pa ON e.area_id = pa.area_id
WHERE wo.status = 'Open';