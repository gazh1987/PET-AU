--Stock Order Inserts
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4000, 2001, 30, 05.00, 1234, 10-Oct-2014);
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4001, 2002, 50, 60.00, 1235, 12-Oct-2014);
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4002, 2003, 30, 05.00, 1236, 15-Oct-2014);
INSERT INTO Stock_order (order_no, supplier_id, quantity, cost_price, staff_id, order_date) VALUES (4003, 2004, 5, 05.00, 1234, 10-Oct-2014);

--Species Inserts
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("dog", "3 times daily", 3004, "large", "walk daily, yearly shots", "clean daily");
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("cat", "2 times daily", 3005, "large", "yearly shots", "change litter daily");
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("hamster", "1 time per day", 3006, "small", "yearly shots", "change box lining");
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("guinea pig", "1 time per day", 3007, "small", "yearly shots", "change box lining");
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("mouse", "2 times daily", 3008, "small", "yearly shots", "change box lining");
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("cw fish", "2 times daily", 3009, "large", "medicine", "clean daily");
INSERT INTO Species (species_name, feeding_instructions, stock_id, enclosure_size, healthcare, cleaning_requirements) VALUES ("t fish", "2 times daily", 3004, "large", "medicine", "clean daily");

--Veterinary Cert Inserts
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (001, 6001, "12 months", "all");
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (002, 6002, "12 months", "all");
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (003, 6003, "8 months", "all");
INSERT INTO Veterinary_cert (cert_number, animal_id, guarentee_period, shots_recieved) VALUES (004, 6004, "6 months", "all");

--Materials Insert
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7000, "dog food", "dog", 3001);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7001, "cat food", "cat", 3011);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7002, "kennell", "dog", 3002);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7003, "fish food", "fish", 3012);
INSERT INTO Materials (material_id, description, species_name, stock_id) VALUES (7000, "dog food", "dog", 3001);

--Upkeep Insert
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5001, 1234, 'Y', 'Y', 'Y', null, "dog");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5002, 1234, 'Y', 'Y', 'Y', null, "dog");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5003, 1235, 'Y', 'Y', 'Y', null, "cat");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5004, 1235, 'Y', 'Y', 'Y', null, "cat");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5005, 1235, 'Y', 'Y', 'Y', null, "hamster");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5006, 1236, 'Y', 'Y', 'Y', null, "guinea pig");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5007, 1236, 'Y', 'Y', 'Y', null, "mice");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5008, 1236, 'Y', 'Y', 'Y', null, "cw fish");
INSERT INTO Upkeep (date_of_check, enclosure_id, staff_id, enclosure_cleaned, animals_fed, exercise_if_required, disease_name, species_name) VALUES (12-Oct-2014, 5009, 1234, 'Y', 'Y', 'Y', null, "t fish");