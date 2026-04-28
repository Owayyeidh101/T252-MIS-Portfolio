SELECT 
    mt.type_name,
    COUNT(wo.work_order_id) AS total_work_orders
FROM MAINTENANCE_TYPE mt
JOIN WORK_ORDER wo ON mt.maintenance_type_id = wo.maintenance_type_id
GROUP BY mt.type_name;