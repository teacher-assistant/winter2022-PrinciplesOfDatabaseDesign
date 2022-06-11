# Question : https://quera.org/problemset/17907/

-- Database Creation
CREATE TABLE Passenger(
    name VARCHAR(50) PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    balance INT
);

CREATE TABLE Driver(
    name VARCHAR(50) PRIMARY KEY,
    email VARCHAR(50) UNIQUE
);

CREATE TABLE Stadium(
    name VARCHAR(50) PRIMARY KEY,
    address VARCHAR(100),
    capacity INT
);

CREATE TABLE Travel(
    id VARCHAR(50) PRIMARY KEY,
    destination VARCHAR(50),
    driver_name VARCHAR(50),
    passenger_name VARCHAR(50),
    price INT,
    FOREIGN KEY (destination) REFERENCES Stadium(name),
    FOREIGN KEY (driver_name) REFERENCES Driver(name),
    FOREIGN KEY (passenger_name) REFERENCES Passenger(name)
);

-- Create some fake data :
INSERT INTO Stadium(name, address, capacity) values("The Allianz Arena", "Werner-Heisenberg-Allee 25, 80939 München, Germany", 75024);
INSERT INTO Stadium(name, address, capacity) values("Old Trafford","Sir Matt Busby Way Home of Manchester United", 74140);
INSERT INTO Stadium(name, address, capacity) values("Camp Nou", "C. d'Arístides Maillol, 12, 08028 Barcelona, Spain", 99354);
INSERT INTO Stadium(name, address, capacity) values("Azteca", " Insurgentes Sur Num 3579, Torre 2 Piso 6 Col Tlalpan La Joya 14000 México D.F., Mexico",87523);
INSERT INTO Stadium(name, address, capacity) values("Santiago Bernabeu", "Av. de Concha Espina, 1, 28036 Madrid, Spain", 81044);
INSERT INTO Stadium(name, address, capacity) values("Anfield Road", "Anfield Rd, Anfield, Liverpool L4 0TH, United Kingdom", 53394);
INSERT INTO Stadium(name, address, capacity) values("San Siro", "Piazzale Angelo Moratti, 20151 Milano MI, Italy",80018);

INSERT INTO Passenger(name, email, balance) values("P1", "e1@gmail.com", 0);
INSERT INTO Passenger(name, email, balance) values("P2", "e2@gmail.com", 100);
INSERT INTO Passenger(name, email, balance) values("P3", "e3@gmail.com", 500);
INSERT INTO Passenger(name, email, balance) values("P4", "e4@gmail.com", 1000);
INSERT INTO Passenger(name, email, balance) values("P5", "e5@gmail.com", 200);

INSERT INTO Driver(name, email) values("D1", "d1@gmail.com");
INSERT INTO Driver(name, email) values("D2", "d2@gmail.com");
INSERT INTO Driver(name, email) values("D3", "d3@gmail.com");
INSERT INTO Driver(name, email) values("D4", "d4@gmail.com");
INSERT INTO Driver(name, email) values("D5", "d5@gmail.com");

INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(1, "The Allianz Arena", "D1", "P1", 150);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(2, "Old Trafford", "D1", "P1", 200);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(3, "Camp Nou", "D1", "P1", 300);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(4, "Camp Nou", "D1", "P3", 500);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(5, "Santiago Bernabeu", "D2", "P2", 450);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(6, "Azteca", "D3", "P2", 50);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(7, "Camp Nou", "D3", "P4", 100);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(8, "Azteca", "D3", "P4", 70);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(9, "San Siro", "D3", "P4", 700);
INSERT INTO Travel(id, destination, driver_name, passenger_name, price) values(10, "San Siro", "D5", "P3", 640);

-- Q1:
CREATE PROCEDURE proc1()
BEGIN
	UPDATE Stadium SET capacity = capacity-100;
END

-- Q2:
CREATE PROCEDURE proc2(pr INT)
BEGIN
	SELECT driver.email
	FROM driver INNER JOIN travel ON driver.`name`=travel.driver_name
	GROUP BY driver.`name`
	HAVING SUM(travel.price)>pr;	
END

-- Q3:
CREATE PROCEDURE proc3(co INT, em VARCHAR(50))
BEGIN
	SELECT passenger.`name`
	FROM (passenger INNER JOIN travel ON passenger.`name`=travel.passenger_name) INNER JOIN driver ON driver.`name`=travel.driver_name
	WHERE driver.email=em
	GROUP BY driver.email, passenger.`name`
	HAVING COUNT(travel.id)>co;
END