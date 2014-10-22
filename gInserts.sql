-- Staff Table
INSERT INTO staff (staff_id, staff_name) VALUES (1234, "Gary Healy");
INSERT INTO staff (staff_id, staff_name) VALUES (1235, "Stefan Burke");
INSERT INTO staff (staff_id, staff_name) VALUES (1236, "Francis Marron");
INSERT INTO staff (staff_id, staff_name) VALUES (1200, "Peter Pets");

-- Suppliers Table
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2001, "Daves Dog Food", "Drogheda");
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2002, "Kevins Kennels", "Clogher Head");
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2003, "Tims Tropical Fish", "Dublin 8");
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2004, "Andys Animals", "Kildare");

-- Stock Table 
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3001, 10.00 , 50, 50, 4000, 2001); --DOG FOOD
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3002, 100.00 , 50, 20, 4001, 2002); --kennels
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3003, 10.00 , 50, 50, 4002, 2003); --Fish
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3004, 50.00 , 11, 10, 4003, 2004); --Animals, dogs

--Enclosure Table
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5001, "individual");
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5002, "communal");
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5001, "tank");