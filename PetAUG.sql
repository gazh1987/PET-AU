CREATE USER ghealy IDENTIFIED BY 1234;
CREATE USER fmarron IDENTIFIED BY 1234;
CREATE USER sburke IDENTIFIED BY 1234;

GRANT SELECT ON Upkeep TO PUBLIC;
GRANT SELECT ON Diseases TO PUBLIC;
GRANT SELECT ON Customer TO PUBLIC;
GRANT SELECT ON Sales_receipt TO PUBLIC;
GRANT SELECT ON Materials TO PUBLIC;
GRANT SELECT ON Veterinary_cert TO PUBLIC;
GRANT SELECT ON Animal TO PUBLIC;
GRANT SELECT ON Enclosure TO PUBLIC;
GRANT SELECT ON Species TO PUBLIC;
GRANT SELECT ON Stock TO PUBLIC; 
GRANT SELECT ON Stock_order TO PUBLIC;
GRANT SELECT ON Suppliers TO PUBLIC;
GRANT SELECT ON Staff TO PUBLIC;

GRANT UPDATE ON Animal TO fmarron
GRANT INSERT ON Customer TO fmarron
GRANT UPDATE ON Animal TO fmarron
GRANT UPDATE ON Materials TO fmarron
GRANT INSERT ON Sales_receipt TO fmarron


DROP TABLE Upkeep;

DROP TABLE Diseases;

DROP TABLE Customer;

DROP TABLE Sales_receipt;

DROP TABLE Materials;

DROP TABLE Veterinary_cert;

DROP TABLE Animal;

DROP TABLE Enclosure;

DROP TABLE Species;

DROP TABLE Stock;

DROP TABLE Stock_order;

DROP TABLE Suppliers;

DROP TABLE Staff;

CREATE TABLE Staff
( 
	staff_id           INT  NOT NULL ,
	staff_name         varchar(20)  NULL ,
  PRIMARY KEY        (staff_id)
);

CREATE TABLE Suppliers
( 
	supplier_id        INT  NOT NULL ,
	supplier_name      VARCHAR(20)  NULL ,
	supplier_address   VARCHAR(40)  NULL ,
	PRIMARY KEY        (supplier_id)
);


CREATE TABLE Stock_order
( 
	order_no            INT  NOT NULL ,
	supplier_id         INT   NOT NULL ,
	quantity            INT  NULL ,
	cost_price          NUMBER(19,4)  NULL ,
	staff_id            INT  NULL ,
	order_date          date  NULL ,
	PRIMARY KEY  (order_no, supplier_id),
  FOREIGN KEY (staff_id) REFERENCES Staff (staff_id),
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Stock
( 
	stock_id            INT             NOT NULL ,
	sale_price          NUMBER (19, 4)  NULL ,
	amount_in_stock     INT             NULL ,
	reorder_level       INT             NULL ,
	order_no            INT             NULL ,
	supplier_id         INT             NULL ,
	PRIMARY KEY         (stock_id),
  FOREIGN KEY (order_no, supplier_id) REFERENCES Stock_order(order_no,supplier_id)
);

CREATE TABLE Species
( 
	species_name          VARCHAR(20)  NOT NULL ,
	feeding_instructions  VARCHAR(50)  NULL ,
	stock_id              INT          NULL ,
	enclosure_size        VARCHAR(20)  NULL ,
	healthcare            VARCHAR(50)  NULL ,
	cleaning_requirements VARCHAR(50)  NULL ,
	PRIMARY KEY           (species_name),
	FOREIGN KEY (stock_id) REFERENCES Stock(stock_id)
);

CREATE TABLE Enclosure
( 
	enclosure_id        INT          NOT NULL ,
	enclosure_type      VARCHAR(20)  NULL ,
	PRIMARY KEY         (enclosure_id)
);

CREATE TABLE Animal
( 
	animal_id          INT          NOT NULL ,
	colour             VARCHAR(20)  NULL ,
	height             VARCHAR(20)  NULL ,
	weight             VARCHAR(20)  NULL ,
	species_name       VARCHAR(20)  NULL ,
	enclosure_id       INT          NULL ,
	treatment		   VARCHAR(20)	NULL ,
	sold			   CHAR(1)		NOT NULL ,
	PRIMARY KEY       (animal_id),
	FOREIGN KEY (species_name) REFERENCES Species(species_name),
  FOREIGN KEY (enclosure_id) REFERENCES Enclosure(enclosure_id)
);

CREATE TABLE Veterinary_cert
( 
	cert_number        INT          NOT NULL ,
	animal_id          INT          NOT NULL ,
	guarentee_period   VARCHAR(20)  NULL ,
	shots_recieved     VARCHAR(20)  NULL ,
  PRIMARY KEY        (cert_number),
  FOREIGN KEY        (animal_id) REFERENCES Animal(animal_id)
);

CREATE TABLE Materials
( 
	material_id        INT          NOT NULL ,
	description        VARCHAR(40)  NULL ,
	species_name       VARCHAR(20)  NULL ,
	stock_id           INT          NULL ,
	PRIMARY KEY        (material_id),
	FOREIGN KEY        (species_name) REFERENCES Species(species_name),
  FOREIGN KEY        (stock_id)     REFERENCES Stock(stock_id)
);

CREATE TABLE Sales_receipt
( 
	receipt_id          INT   NOT NULL ,
	animal_id           INT   NULL ,
	material_id         INT   NULL ,
	sale_date           DATE  NULL ,
	PRIMARY KEY         (receipt_id),
	FOREIGN KEY (animal_id)   REFERENCES Animal(animal_id),
  FOREIGN KEY (material_id) REFERENCES Materials(material_id)
);

CREATE TABLE Customer
( 
	receipt_id        INT  NOT NULL ,
	customer_name		  VARCHAR(40) NOT NULL, 
	PRIMARY KEY       (receipt_id),
	FOREIGN KEY       (receipt_id) REFERENCES Sales_receipt(receipt_id)
);

CREATE TABLE Diseases
( 
	disease_name       VARCHAR(20)  NOT NULL ,
	species_name       VARCHAR(20)  NOT NULL ,
	symptoms           VARCHAR(80)  NULL ,
	treatment          VARCHAR(50)  NULL ,
	PRIMARY KEY        (disease_name, species_name),
	FOREIGN KEY        (species_name) REFERENCES Species(species_name)
);

CREATE TABLE Upkeep
( 
	date_of_check           DATE          NOT NULL ,
	enclosure_id            INT           NOT NULL ,
	staff_id                INT           NOT NULL ,
	enclosure_cleaned       CHAR(1)       NULL ,
	animals_fed             CHAR(1)       NULL ,
	exercise_if_required    CHAR(1)       NULL ,
	disease_name            VARCHAR(20)   NULL ,
	species_name            VARCHAR(20)   NULL ,
	PRIMARY KEY             (date_of_check, enclosure_id, staff_id),
	FOREIGN KEY             (enclosure_id) REFERENCES Enclosure(enclosure_id),
  FOREIGN KEY             (disease_name,species_name) REFERENCES Diseases(disease_name,species_name),
  FOREIGN KEY (staff_id)  REFERENCES Staff(staff_id)
);
