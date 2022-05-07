-- part 1 : create tables of the database

create table offices(
	officeCode varchar(10) primary key,
	city varchar(50),
	phone varchar(50),
	addressLine1 varchar(50),
	addressLine2 varchar(50),
	state varchar(50),
	country varchar(50),
	postalCode varchar(15),
	territory varchar(10)
);

create table employees(
	employeeNumber bigint primary key,
	lastName varchar(50),
	firstName varchar(50),
	extension varchar(10),
	email varchar(100),
	officeCode varchar(10) references offices(officeCode),
	reportTo bigint references employees(employeeNumber),
	jobTitle varchar(50)
);

create table productlines(
	productLine varchar(50) primary key,
	textDescription varchar(4000),
	htmlDescription text,
	image bytea
);

create table products(
	productCode varchar(15) primary key,
	productName varchar(70),
	productLine varchar(50) references productlines(productLine),
	productScale varchar(10),
	productVendor varchar(50),
	productDescription text,
	quantityInStock smallint,
	buyPrice decimal(10, 2),
	MSRP decimal(10, 2)
);

create table customers(
	customerNumber bigint primary key,
	customerName varchar(50),
	contactLastName varchar(50),
	contactFirstName varchar(50),
	phone varchar(50),
	addressLine1 varchar(50),
	addressLine2 varchar(50),
	city varchar(50),
	state varchar(50),
	postalCode varchar(15),
	country varchar(50),
	salesRepEmployeeNumber bigint references employees(employeeNumber),
	creditLimit decimal(10, 2)
);

create table payments(
	customerNumber bigint references customers(customerNumber),
	checkNumber  varchar(50) primary key,
	paymentDate date,
	amount decimal(10, 2)
);

create table orders(
	orderNumber bigint primary key,
	orderDate date,
	requiredDate date,
	shippedDate date,
	status varchar(15),
	comment text,
	customerNumber bigint references customers(customerNumber)
);

create table orderdetails(
	orderNumber bigint references orders(orderNumber),
	productCode varchar(15) references products(productCode),
	quantityOrdered bigint,
	priceEach decimal(10, 2),
	orderLineNumber smallint
);

-- part 2 : Insert some data into database in order to test queries

insert into productlines(productLine, textDescription, htmlDescription, image) values('Food', 'This line belongs to foods', '<h1>Food</h1>', 'FoodImageData');
insert into productlines(productLine, textDescription, htmlDescription, image) values('Phone', 'This line belongs to phones', '<h2>Phone</h2>', 'PhoneImageData');
insert into productlines(productLine, textDescription, htmlDescription, image) values('Health', 'This line belongs to health products', '<h1>Health</h1>', 'HealthImageData');


insert into products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP) values('ML01', 'Milk', 'Food', 's1', 'v1', 'Low Fat Milk', 10, 1000.2, 1.5);
insert into products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP) values('BN02', 'Banana', 'Food', 's2', 'v1', 'Fresh Banana', 50, 50.05, 1.3);
insert into products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP) values('IP07', 'Iphone 7','Phone', 's3', 'v3', 'Iphone 7 via 256 GB RAM', 5000, 2000, 1.1);
insert into products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP) values('IPSE01', 'Iphone SE', 'Phone', 's4', 'v4', 'Iphone SE via 512 GB RAM', 100, 1000, 1.05);
insert into products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP) values('SHCL01', 'Shampoo', 'Health', 's5', 'v5', 'Clear Shampoo', 1000, 10, 1.25);
insert into products(productCode,productName,productLine,productScale,productVendor,productDescription,quantityInStock,buyPrice,MSRP) values('PL01', 'Pill', 'Health', 's6', 'v6', 'Pill for cold', 10000, 2, 1.15);

insert into offices(officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory) values('Vanc', 'Vancouver', '+1001','A1', 'A2', 'Ontario', 'Canada', '001', 'Canada');
insert into offices(officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory) values('Tore', 'Torento', '+1002', 'A3', 'A4', 'British Columbia', 'Canada', '002', 'Canada');

insert into employees(employeeNumber, lastName, firstName, extension, email, officeCode, reportTo, jobTitle) values(1, 'O. Scott', 'Jason', 'E1', 'JasonScc01@gmail.com', 'Vanc', null, 'CEO');
insert into employees(employeeNumber, lastName, firstName, extension, email, officeCode, reportTo, jobTitle) values(2, 'E. Moore', 'Rufus', 'E2', 'RuMoree@yahoo.com', 'Vanc', 1, 'Clerk');
insert into employees(employeeNumber, lastName, firstName, extension, email, officeCode, reportTo, jobTitle) values(3, 'R. Hayes', 'Kenneth', 'E3', 'Ken1995@gmail.com', 'Tore', null, 'CEO');
insert into employees(employeeNumber, lastName, firstName, extension, email, officeCode, reportTo, jobTitle) values(4, 'W. Allen', 'Nicole', 'E4', 'AllenNic1996@yahoo.com', 'Tore', 3, 'Clerk');

insert into customers(customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit) values(1, 'Sherry', 'C. Marks', 'Sherry', '+1003', 'A5', 'A6', 'Calgary', 'Alberta', '003', 'Canada', 2, 1000);
insert into customers(customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit) values(2, 'Candyce', 'M. Williams', 'Candyce', '+1004', 'A7', 'A8', 'Vancouver', 'British Columbia', '004', 'Canada', 2, 500);
insert into customers(customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit) values(3, 'Mark', 'M. Addison', 'Mark', '+1005', 'A9', 'A10', 'Montréal', 'Québec', '005', 'Canada', 4, 100);

insert into orders(orderNumber, orderDate, requiredDate, shippedDate, status, comment, customerNumber) values(1, '2022-02-01', '2022-03-01', '2022-02-10', 'Sent', 'I need my order as soon as possible.', 1);
insert into orders(orderNumber, orderDate, requiredDate, shippedDate, status, comment, customerNumber) values(2, '2021-01-01', '2022-03-01', null, 'Preparing','Please send it carefully.', 2);

insert into orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber) values(1, 'PL01', 2, 2.30, 1);
insert into orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber) values(1, 'SHCL01', 1, 12.5, 2);
insert into orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber) values(2, 'IPSE01', 1, 1050, 1);

insert into payments(customerNumber, checkNumber, paymentDate, amount) values(1, 'C1', '2021-11-17', 1027.3);
insert into payments(customerNumber, checkNumber, paymentDate, amount) values(2, 'C2', '2021-12-25', 1550);
insert into payments(customerNumber, checkNumber, paymentDate, amount) values(3, 'C3', '2022-01-02', 100);

-- part 3 : Expected queries in the homework

--Q1
SELECT *
FROM orders
WHERE (shippeddate IS NULL) OR (shippeddate - orderdate > 30);

--Q2
SELECT products.productCode AS "Product Code", products.productName AS "Product Name", orderdetails.quantityOrdered As "Count of ordered", orderdetails.priceEach AS "Sell Product", products.buyPrice AS "Buy Price", (orderdetails.quantityOrdered*orderdetails.priceEach) AS "Sell Amount", (orderdetails.quantityOrdered*products.buyPrice) AS "Buy Amount"
FROM (orders INNER JOIN orderdetails ON orders.orderNumber=orderdetails.orderNumber) INNER JOIN products ON products.productCode=orderdetails.productCode
WHERE date_part('month', orders.orderDate)=01;

--Q3
SELECT orders.orderdate AS "Date", SUM(orderdetails.priceeach*orderdetails.quantityordered) AS "Sum of Sell", SUM(orderdetails.quantityordered) AS "Count of Sell", COUNT(DISTINCT(orders.ordernumber)) AS "Count of orders"
FROM orders INNER JOIN orderdetails on orders.orderNumber=orderdetails.orderNumber
WHERE date_part('year', orders.orderDate)=2022
GROUP BY orders.orderdate
ORDER BY SUM(orderdetails.priceeach*orderdetails.quantityordered) DESC;

--Q4
SELECT
		employees.employeenumber AS "Employee's code",
		CONCAT(employees.firstname, ' ', employees.lastname) AS "Employee's Full Name",
		COUNT(DISTINCT(customers.customernumber)) AS "Count of Cutsomers",
		COUNT(orders.ordernumber) AS "Count of Orders"
FROM (employees LEFT JOIN customers ON employees.employeenumber=customers.salesrepemployeenumber) LEFT JOIN orders ON orders.customernumber=customers.customernumber
WHERE employees.officecode='Vanc'
GROUP BY employees.employeenumber;

--Q5
SELECT customers.country AS "Country", SUM(orderdetails.quantityordered*orderdetails.priceeach) AS "Sum of Orders Amount"
FROM (customers LEFT JOIN orders ON customers.customernumber=orders.customernumber) LEFT JOIN orderdetails ON orders.ordernumber=orderdetails.ordernumber
GROUP BY customers.country
ORDER BY COUNT(customers.customernumber) DESC;

--Q6
SELECT orders.ordernumber AS "Order Code", sum(orderdetails.priceeach*orderdetails.quantityordered) AS "Sum of Sell", (SELECT customers.customername FROM customers WHERE customers.customernumber=orders.customernumber), (SELECT customers.customernumber FROM customers WHERE customers.customernumber=orders.customernumber)
FROM (customers INNER JOIN orders ON customers.customernumber=orders.customernumber) RIGHT JOIN orderdetails ON orders.ordernumber=orderdetails.ordernumber
WHERE date_part('year', orders.orderdate)=2022
GROUP BY orders.ordernumber
ORDER BY sum(orderdetails.priceeach*orderdetails.quantityordered) DESC
LIMIT 10;