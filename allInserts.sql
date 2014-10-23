------- Staff Table
INSERT INTO staff (staff_id, staff_name) VALUES (1234, 'Gary Healy');
INSERT INTO staff (staff_id, staff_name) VALUES (1235, 'Stefan Burke');
INSERT INTO staff (staff_id, staff_name) VALUES (1236, 'Francis Marron');
INSERT INTO staff (staff_id, staff_name) VALUES (1200, 'Peter Pets');


-- Suppliers Table
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2001, 'Daves Dog Food', 'Drogheda');
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2002, 'Kevins Kennels', 'Clogher Head');
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2003, 'Tims Tropical Fish', 'Dublin 8');
INSERT INTO suppliers (supplier_id, supplier_name, supplier_address) VALUES (2004, 'Andys Animals', 'Kildare');


--Stock Order Inserts
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4000, 2001, 30, 05.00, 1234, '10-Oct-14');
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4001, 2002, 50, 60.00, 1235, '12-Oct-14');
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4002, 2003, 30, 05.00, 1236, '15-Oct-14');
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4003, 2004, 5, 05.00, 1234, '10-Oct-14');


-- Stock Table 
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3004, 50.00 , 2, 10, 4003, 2004); -- dogs
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3005, 50.00 ,2, 1); --cats
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3006, 20.00 , 2, 1); --hamsters
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3007, 20.00 , 2, 1); --guinea pig
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3008, 10.00 , 2, 1); --White Mice
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3009, 10.00 , 2, 1); --cold water fish
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3010, 50.00 , 2, 1); --tropical fish

INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3011, 10.00 , 50, 1); --cat food
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3012, 10.00 , 50, 1); --fish food
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3001, 10.00 , 50, 50, 4000, 2001); --DOG FOOD
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3002, 100.00 , 2, 20, 4001, 2002); --kennel
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3013, 10.00 , 0, 1);
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3014, 10.00 , 0, 1);
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3015, 10.00 , 2, 1);
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3016, 10.00 , 15, 1);
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3017, 50.00 , 2, 1);
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3018, 50.00 , 2, 1);
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3019, 50.00 , 2, 1);


--Species Inserts
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('dog', '3 times daily', 3004, 'large', 'walk daily, yearly shots', 'clean daily');
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('cat', '2 times daily', 3005, 'large', 'yearly shots', 'change litter daily');
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('hamster', '1 time per day', 3006, 'small', 'yearly shots', 'change box lining');
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('guinea pig', '1 time per day', 3007, 'small', 'yearly shots', 'change box lining');
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('white mice', '2 times daily', 3008, 'small', 'yearly shots', 'change box lining');
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('cold water fish', '2 times daily', 3009, 'large', 'medicine', 'clean daily');
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ('tropical fish', '2 times daily', 3004, 'large', 'medicine', 'clean daily');

--Enclosure Table
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5001, 'individual'); --dog
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5002, 'individual'); --dog
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5003, 'individual'); --cat
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5004, 'individual'); --cat
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5005, 'communal');   --hamsters
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5006, 'communal');   --guinea pigs
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5007, 'communal');   --white mice
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5008, 'tank');	  --cold water fish
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5009, 'tank');       --tropical fish


--Animal Table
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6001, 'White', '2feet', '15kg', 'dog', 5001, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6002, 'brown', '1feet', '7.5kkg', 'dog', 5002, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6003, 'White', '1feet', '7.5kg', 'cat', 5003, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6004, 'White', '2feet', '15kg', 'cat', 5004, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6005, 'White', '10cm', '0.5kg', 'hamster', 5005, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6006, 'White', '10cm', '0.5kg', 'hamster', 5005, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6007, 'brown', '10cm', '0.5kg', 'guinea pig', 5006, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6008, 'brown', '10cm', '0.5kg', 'guinea pig', 5006, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6009, 'White', '10cm', '0.5kg', 'white mice', 5007, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6010, 'White', '10cm', '0.5kg', 'white mice', 5007, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6011, 'grey', '50cm', '0.5kg', 'cold water fish', 5008, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6012, 'grey', '50cm', '0.5kg', 'cold water fish', 5008, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6013, 'gold', '50cm', '0.5kg', 'tropical fish', 5009, null, 'N');
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id, treatment, sold) VALUES (6014, 'gold', '50cm', '0.5kg', 'tropical fish', 5009, null, 'N');


--Veterinary Cert Inserts
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (001, 6001, '12 months', 'all');
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (002, 6002, '12 months','all');
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (003, 6003, '8 months', 'all');
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (004, 6004, '6 months', 'all');


--Materials Insert
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7000, 'dog food', 'dog', 3001); --
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7002, 'kennell', 'dog', 3002); --
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7001, 'cat food', 'cat', 3011); -- 
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7003, 'fish food', 'tropical fish', 3012); --
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7004, 'rodent food', 'hamsters', 3013);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7005, 'rodent food', 'guinea pigs', 3014);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7006, 'fish food', 'cold water fish', 3015);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7007, 'rodent food', 'white mice', 3016);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7008, 'rodent cage', 'guinea pigs', 3017);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7009, 'rodent cage', 'white mice', 3018);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7002, 'rodent cage', 'hamsters', 3019);

--Sales Reciept Table
INSERT INTO Sales_receipt (receipt_id, animal_id, material_id, sale_date) VALUES (9001, 6014, 7003, '18-oct-14');
INSERT INTO sales_receipt (receipt_id, animal_id, material_id, sale_date) VALUES (9002, 6003, 7001, '18-oct-14');


--Customer
INSERT INTO customer (receipt_id, customer_name) VALUES (9001, 'Joe Bloggs');
INSERT INTO customer (receipt_id, customer_name) VALUES (9002, 'Annie Yowks');


--DISEASES TABLE
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Lyme Disease', 'dog', 'inflamation of the joints', 'antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Mange', 'dog', 'skin lesions', 'antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Chronic Vomitting', 'dog', 'chronic vommiting', 'antibiotics');

INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Chronic Vomitting', 'cat', 'chronic vommiting', 'antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Mange', 'cat', 'skin lesions', 'long term medication');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Lyme Disease', 'cat', 'inflamation of the joints', 'antibiotics');

INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('ringworm', 'hamster', 'dry scaly skin', 'cream and antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('lice', 'hamster', 'loass of hair', 'cream and antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('ringworm', 'guinea pig', 'dry scaly skin', 'cream and antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('lice', 'guinea pig', 'loss of hair', 'cream and antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('ringworm', 'white mice', 'dry scaly skin', 'cream and antibiotics');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('lice', 'white mice', 'loss of hair', 'cream and antibiotics');

INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('body flukes', 'cold water fish', 'Layer of mucus covering gills or body.', 'Tetra parasite guard');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('body flukes', 'tropical fish', 'Layer of mucus covering gills or body.', 'Tetra parasite guard');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Dropsy', 'cold water fish', 'Bloating.', 'Antibiotic injections');
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ('Dropsy', 'tropical fish', 'Bloating.', 'Antibiotic injections');


--Upkeep Insert
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5001, 1234, 'Y', 'Y', 'Y', null, 'dog');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5002, 1234, 'Y', 'Y', 'Y', null, 'dog');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5003, 1235, 'Y', 'Y', 'Y', null, 'cat');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5004, 1235, 'Y', 'Y', 'Y', null, 'cat');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5005, 1235, 'Y', 'Y', 'Y', null, 'hamster');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5006, 1236, 'Y', 'Y', 'Y', null, 'guinea pig');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5007, 1236, 'Y', 'Y', 'Y', null, 'white mice');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5008, 1236, 'Y', 'Y', 'Y', null, 'cold water fish');
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES ('12-Oct-2014', 5009, 1234, 'Y', 'Y', 'Y', null, 'tropical fish');

COMMIT;

 