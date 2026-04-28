SELECT 
    e.equipment_id,
    e.equipment_name,
    COUNT(wo.work_order_id) AS total_work_orders
FROM EQUIPMENT e
JOIN WORK_ORDER wo ON e.equipment_id = wo.equipment_id
GROUP BY e.equipment_id, e.equipment_name
ORDER BY total_work_orders DESC;