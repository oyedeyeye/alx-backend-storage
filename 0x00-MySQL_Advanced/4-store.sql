-- script that creates a trigger that decreases the quantity of an item after adding a new order.
-- Quantity in the table items can be negative.
DELIMITER $$
CREATE TRIGGER decrease_quantity
AFTER INSERT ON orders FOR EACH ROW
-- Trigger body
BEGIN
UPDATE items
SET items.quantity = items.quantity - orders.number
WHERE orders.item_name = items.name;
END$$
