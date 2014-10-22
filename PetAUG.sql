
DROP TABLE [Upkeep]

DROP TABLE [Diseases]

DROP TABLE [Customer]

DROP TABLE [Sales_receipt]

DROP TABLE [Materials]

DROP TABLE [Veterinary_cert]

DROP TABLE [Animal]

DROP TABLE [Enclosure]

DROP TABLE [Species]

DROP TABLE [Stock]

DROP TABLE [Stock_order]

DROP TABLE [Suppliers]

DROP TABLE [Staff]

CREATE TABLE [Staff]
( 
	[staff_id]           integer(4)  NOT NULL ,
	[staff_name]         varchar(20)  NULL ,
	CONSTRAINT [XPKStaff] PRIMARY KEY  CLUSTERED ([staff_id] ASC)
)

CREATE TABLE [Suppliers]
( 
	[supplier_id]        integer(4)  NOT NULL ,
	[supplier_name]      varchar(20)  NULL ,
	[supplier_address]   varchar(40)  NULL ,
	CONSTRAINT [XPKSuppliers] PRIMARY KEY  CLUSTERED ([supplier_id] ASC)
)


CREATE TABLE [Stock_order]
( 
	[order_no]           integer(4)  NOT NULL ,
	[supplier_id]        integer(4)  NOT NULL ,
	[quantity]           integer(4)  NULL ,
	[cost_price]         money(19,4)  NULL ,
	[staff_id]           integer(4)  NULL ,
	[order_date]         date  NULL ,
	CONSTRAINT [XPKStock_order] PRIMARY KEY  CLUSTERED ([order_no] ASC,[supplier_id] ASC),
	CONSTRAINT [R_24] FOREIGN KEY ([staff_id]) REFERENCES [Staff]([staff_id]),
CONSTRAINT [R_30] FOREIGN KEY ([supplier_id]) REFERENCES [Suppliers]([supplier_id])
)

CREATE TABLE [Stock]
( 
	[stock_id]           integer(4)  NOT NULL ,
	[sale_price]         money(19, 4)  NULL ,
	[amount_in_stock]    integer(4)  NULL ,
	[reorder_level]      integer(4)  NULL ,
	[order_no]           integer(4)  NULL ,
	[supplier_id]        integer(4)  NULL ,
	CONSTRAINT [XPKStock] PRIMARY KEY  CLUSTERED ([stock_id] ASC),
	CONSTRAINT [R_32] FOREIGN KEY ([order_no],[supplier_id]) REFERENCES [Stock_order]([order_no],[supplier_id])
)

CREATE TABLE [Species]
( 
	[species_name]       varchar(20)  NOT NULL ,
	[feeding_instructions] varchar(50)  NULL ,
	[stock_id]           integer  NULL ,
	[enclosure_size]     varchar(20)  NULL ,
	[healthcare]         varchar(50)  NULL ,
	[cleaning_requirements] varchar(50)  NULL ,
	CONSTRAINT [XPKSpecies] PRIMARY KEY  CLUSTERED ([species_name] ASC),
	CONSTRAINT [R_5] FOREIGN KEY ([stock_id]) REFERENCES [Stock]([stock_id])
)

CREATE TABLE [Enclosure]
( 
	[enclosure_id]       integer(4)  NOT NULL ,
	[enclosure_type]     varchar(20)  NULL ,
	CONSTRAINT [XPKEnclosure] PRIMARY KEY  CLUSTERED ([enclosure_id] ASC)
)

CREATE TABLE [Animal]
( 
	[animal_id]          integer(4)  NOT NULL ,
	[colour]             varchar(20)  NULL ,
	[height]             varchar(20)  NULL ,
	[weight]             integer(3)  NULL ,
	[species_name]       varchar(20)  NULL ,
	[enclosure_id]       integer(4)  NULL ,
	CONSTRAINT [XPKAnimal] PRIMARY KEY  CLUSTERED ([animal_id] ASC),
	CONSTRAINT [R_9] FOREIGN KEY ([species_name]) REFERENCES [Species]([species_name]),
CONSTRAINT [R_11] FOREIGN KEY ([enclosure_id]) REFERENCES [Enclosure]([enclosure_id])
)

CREATE TABLE [Veterinary_cert]
( 
	[cert_number]        integer(4)  NOT NULL ,
	[animal_id]          integer(4)  NOT NULL ,
	[guarentee_period]   varchar(20)  NULL ,
	[shots_recieved]     varchar(20)  NULL ,
	CONSTRAINT [XPKVeterinary_cert] PRIMARY KEY  CLUSTERED ([cert_number] ASC),
	CONSTRAINT [R_27] FOREIGN KEY ([animal_id]) REFERENCES [Animal]([animal_id])
)

CREATE TABLE [Materials]
( 
	[material_id]        integer(4)  NOT NULL ,
	[description]        varchar(40)  NULL ,
	[species_name]       varchar(20)  NULL ,
	[stock_id]           integer(4)  NULL ,
	CONSTRAINT [XPKMaterials] PRIMARY KEY  CLUSTERED ([material_id] ASC),
	CONSTRAINT [R_6] FOREIGN KEY ([species_name]) REFERENCES [Species]([species_name]),
CONSTRAINT [R_8] FOREIGN KEY ([stock_id]) REFERENCES [Stock]([stock_id])
)

CREATE TABLE [Sales_receipt]
( 
	[receipt_id]         integer(4)  NOT NULL ,
	[animal_id]          integer(4)  NULL ,
	[material_id]        integer(4)  NULL ,
	[sale_date]               date  NULL ,
	CONSTRAINT [XPKSales_receipt] PRIMARY KEY  CLUSTERED ([receipt_id] ASC),
	CONSTRAINT [R_25] FOREIGN KEY ([animal_id]) REFERENCES [Animal]([animal_id]),
CONSTRAINT [R_26] FOREIGN KEY ([material_id]) REFERENCES [Materials]([material_id])
)

CREATE TABLE [Customer]
( 
	[receipt_id]         integer(4)  NOT NULL ,
	[customer_name]		 varchar(40) NOT NULL, <%-- Added just so theres not one attribute. Also you need a license nowadays for anything so you might need to keep name -->
	CONSTRAINT [XPKCustomer] PRIMARY KEY  CLUSTERED ([receipt_id] ASC),
	CONSTRAINT [R_28] FOREIGN KEY ([receipt_id]) REFERENCES [Sales_receipt]([receipt_id])
)

CREATE TABLE [Diseases]
( 
	[disease_name]       varchar(20)  NOT NULL ,
	[species_name]       varchar(20)  NOT NULL ,
	[symptoms]           varchar(80)  NULL ,
	[treatment]          varchar(50)  NULL ,
	CONSTRAINT [XPKDiseases] PRIMARY KEY  CLUSTERED ([disease_name] ASC,[species_name] ASC),
	CONSTRAINT [R_19] FOREIGN KEY ([species_name]) REFERENCES [Species]([species_name])
)

CREATE TABLE [Upkeep]
( 
	[date_of_check]      date  NOT NULL ,
	[enclosure_id]       integer(4)  NOT NULL ,
	[staff_id]           integer(4)  NOT NULL ,
	[enclosure_cleaned]  char(1)  NULL ,
	[animals_fed]        char(1)  NULL ,
	[exercise_if_required] char(1)  NULL ,
	[disease_name]       varchar(20)  NULL ,
	[species_name]       varchar(20)  NULL ,
	CONSTRAINT [XPKUpkeep] PRIMARY KEY  CLUSTERED ([date_of_check] ASC,[enclosure_id] ASC,[staff_id] ASC),
	CONSTRAINT [R_20] FOREIGN KEY ([enclosure_id]) REFERENCES [Enclosure]([enclosure_id]),
CONSTRAINT [R_21] FOREIGN KEY ([disease_name],[species_name]) REFERENCES [Diseases]([disease_name],[species_name]),
CONSTRAINT [R_22] FOREIGN KEY ([staff_id]) REFERENCES [Staff]([staff_id])
)
