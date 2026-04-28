SELECT 
    part_id,
    part_name,
    quantity_on_hand,
    minimum_quantity
FROM PART
WHERE quantity_on_hand < minimum_quantity;