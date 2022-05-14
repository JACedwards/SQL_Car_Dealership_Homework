--Had trouble creating foreign keys.
--Made sure the primary key had been created first.
--used correct code (I'm pretty sure), like this:
	--foreign key(costomer_id) references Customer(costomer_id)
--However, kept getting error message that that item did not exist.

--Also, had a question about boolean values.  Looks like True shows as [v] in 
	--the data table and False shows as [ ]. Is that the way it should look?




create table Mechanic(
mechanic_id serial primary key,
name varchar(50),
hourly_rate numeric (6,2)
);

create table Parts(
part_id serial primary key,
price numeric (7,2),
parts_name varchar(50)
);

create table Customer(
customer_id serial primary key,
name_cust varchar(50),
credit_score smallint
);



create table Salesperson(
id serial primary key,
name_sales varchar(75),
hire_date date,
salary integer
);

create table Salesperson(
id serial primary key,
name_sales varchar(75),
hire_date date,
salary integer
);

create table Car(
vin serial primary key,
sold_by integer,
year integer,
model varchar(50),
make varchar(50),
used bool,
msrp numeric (9,2)
);

create table Salesperson(
id serial primary key,
name_sales varchar(75),
hire_date date,
salary integer
);

create table Salesperson(
id serial primary key,
name_sales varchar(75),
hire_date date,
salary integer
);

create table SalesInvoice(
sales_invoice_id serial primary key,
vin integer,
customer_id integer,
sale_price numeric (9,2)
);

create table ServiceInvoice(
service_invoice_id serial primary key,
vin integer,
customer_id integer,
labor_cost numeric (7,2),
parts_cost numeric (7,2),
work_desc varchar(500)
);

create table Mechanic_Invoice (
mechanic_id integer,
service_invoice_id integer,
labor_hours integer
);

create table Service_Parts (
sevice_parts_id serial primary Key,
part_id serial,
quantity integer,
service_invoice_id integer
);



----Start Inserting Data


INSERT INTO Car (sold_by, year, model, make, used, msrp)
VALUES ( '0001', '1920', 'T', 'Ford', true, '1000000');

INSERT INTO Car (sold_by, year, model, make, used, msrp)
VALUES ( '9999', '1922', 'Bolt', 'Chevy', false, '25000');

INSERT INTO Customer (name_cust, credit_score)
VALUES ('Goober', '10');

INSERT INTO Customer (name_cust, credit_score)
VALUES ('Don Quixote', '800');

INSERT INTO Mechanic (name, hourly_rate)
VALUES ('Snout the Tinker', '0.01');

INSERT INTO Mechanic (name, hourly_rate)
VALUES ('Iago', '9999.99');

INSERT INTO Mechanic (name, hourly_rate)
VALUES ('Iago', '9999.99');

INSERT INTO Mechanic_invoice (mechanic_id, service_invoice_id, labor_hours)
VALUES (1, 0001, 1000);

INSERT INTO Mechanic_invoice (mechanic_id, service_invoice_id, labor_hours)
VALUES (2, 0002, 1);

INSERT INTO parts (price, parts_name)
VALUES (15.00, 'hamster wheel');

INSERT INTO parts (price, parts_name)
VALUES (.50, 'Fred Flintstones Feet');

INSERT INTO SalesInvoice (vin, customer_id, sale_price)
VALUES (0001, 0001, 1.50);

INSERT INTO SalesInvoice (vin, customer_id, sale_price)
VALUES (1921, 0002, 25.50);

INSERT INTO Salesperson (name_sales, hire_date, salary)
VALUES ('Shylock', '1661-01-20', 9999);

INSERT INTO Salesperson (name_sales, hire_date, salary)
VALUES ('Harpagon', '1668-12-06', 7777);

INSERT INTO ServiceInvoice (vin, customer_id, labor_cost, parts_cost, work_desc)
VALUES (0101, 0000, 0.99, 9.99, 'Removing Fred Flintstones Bunyans');

INSERT INTO ServiceInvoice (vin, customer_id, labor_cost, parts_cost, work_desc)
VALUES (0202, 1000, 21.00, 1999.95, 'Replacing Herbert the Hamster with Harry the Hamster');

INSERT INTO Service_Parts (quantity, service_invoice_id)
VALUES (202, 0003);

INSERT INTO Service_Parts (quantity, service_invoice_id)
VALUES (2, 0002);



























