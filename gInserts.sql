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
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3002, 100.00 , 2, 20, 4001, 2002); --kennel
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level, order_no, supplier_id) VALUES (3004, 50.00 , 2, 10, 4003, 2004); --Animals, dogs
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3005, 50.00 ,2, 1, 2004); --cats
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3006, 20.00 , 2, 1); --hamsters
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3007, 20.00 , 2, 1); --guinea pig
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3008, 10.00 , 2, 1); --White Mice
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3009, 10.00 , 2, 1); --cold water fish
INSERT INTO stock (stock_id, sale_price, amount_in_stock, reorder_level) VALUES (3010, 50.00 , 2, 1); --tropical fish


--Enclosure Table
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5001, "individual"); --dog
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5002, "individual"); --dog
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5003, "individual"); --cat
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5004, "individual"); --cat
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5005, "communal");   --hamsters
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5006, "communal");   --guinea pigs
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5007, "communal");   --white mice
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5008, "tank");	  --cold water fish
INSERT INTO enclosure (enclosure_id, enclosure_type) VALUES (5009, "tank");       --tropical fish

--Animal Table
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6001, "White", "2feet", "15kg", "dog", 5001);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6002, "brown", "1feet", "7.5kgkg", "dog", 5002);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6003, "White", "1feet", "7.5kg", "cat", 5003);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6004, "White", "2feet", "15kg", "cat", 5004);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6005, "White", "10cm", "0.5kg", "hamster", 5005);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6006, "White", "10cm", "0.5kg", "hamster", 5005);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6007, "brown", "10cm", "0.5kg", "guinea pigs", 5006);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6008, "brown", "10cm", "0.5kg", "guinea pigs", 5006);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6009, "White", "10cm", "0.5kg", "white mice", 5007);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6010, "White", "10cm", "0.5kg", "white mice", 5007);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6011, "grey", "50cm", "0.5kg", "cold water fish", 5008);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6012, "grey", "50cm", "0.5kg", "cold water fish", 5008);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6013, "gold", "50cm", "0.5kg", "tropical fish", 5009);
INSERT INTO animal (animal_id, colour, height, weight, species_name, enclosure_id) VALUES (6014, "gold", "50cm", "0.5kg", "tropical fish", 5009);

--Sales Reciept Table
INSERT INTO sales_reciept (reciept_id, animal_id, material_id, sale_date) VALUES (9001, 6014, 7003, 18-oct-14);
INSERT INTO sales_reciept (reciept_id, animal_id, material_id, sale_date) VALUES (9002, 6003, 7001, 18-oct-14);

--Customer
INSERT INTO customer (receipt_id, customer_name) VALUES (9001, "Joe Bloggs");
INSERT INTO customer (receipt_id, customer_name) VALUES (9001, "Annie Yowks");

--DISEASES TABLE
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Lyme Disease", "dog", "inflamation of the joints", "antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Mange", "dog", "skin lesions", "antibiotics", "long term medication");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Chronic Vomitting", "dog", "chronic vommiting", "antibiotics");

INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Chronic Vomitting", "cat", "chronic vommiting", "antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Mange", "cat", "skin lesions", "long term medication");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Lyme Disease", "cat", "inflamation of the joints", "antibiotics");

INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("ringworm", "hamster", "dry scaly skin", "cream and antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("lice", "hamster", "loass of hair", "cream and antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("ringworm", "guinea pig", "dry scaly skin", "cream and antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("lice", "guinea pig", "loss of hair", "cream and antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("ringworm", "white mice", "dry scaly skin", "cream and antibiotics");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("lice", "white mice", "loss of hair", "cream and antibiotics");

INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("body flukes", "cold water fish", "Layer of mucus covering gills or body.", "Tetra parasite guard");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("body flukes", "tropical fish", "Layer of mucus covering gills or body.", "Tetra parasite guard");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Dropsy", "cold water fish", "Bloating.", "Antibiotic injections");
INSERT INTO diseases(disease_name, species_name, symptoms, treatment) VALUES ("Dropsy", "tropical fish", "Bloating.", "Antibiotic injections");

<%-- ILL LET YOU DO THE UPKEEP, LET ME KNOW IF I MISSED SOMETHING --%>
<%-- By the way delete these comments when your done or the sql wont run --%>


 