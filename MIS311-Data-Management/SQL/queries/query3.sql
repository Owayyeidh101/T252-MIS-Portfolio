SELECT 
    wo.work_order_id,
    wo.work_description,
    SUM(wop.quantity_used * p.unit_cost) AS total_parts_cost
FROM WORK_ORDER wo
JOIN WORK_ORDER_PART wop ON wo.work_order_id = wop.work_order_id
JOIN PART p ON wop.part_id = p.part_id
GROUP BY wo.work_order_id, wo.work_description;