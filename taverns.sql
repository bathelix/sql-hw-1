DROP TABLE IF EXISTS Taverns
DROP TABLE IF EXISTS Employees
DROP TABLE IF EXISTS Supplies
DROP TABLE IF EXISTS Services
DROP TABLE IF EXISTS Sales
DROP TABLE IF EXISTS Guests

/* CREATING TABLES */

CREATE TABLE Taverns(
tavID SMALLINT,
tavName VARCHAR(50),
tavLocation VARCHAR(50),
tavOwner VARCHAR(50),
tavFloors SMALLINT,
tavRats SMALLINT
);

CREATE TABLE Employees(
tavID SMALLINT,
empID SMALLINT PRIMARY KEY,
empName VARCHAR(50),
empRole VARCHAR(50)
);

CREATE TABLE Supplies(
tavID SMALLINT,    
suppliesID SMALLINT PRIMARY KEY,
suppliesName VARCHAR(50),
suppliesSize INT,
suppliesAvailable INT,
suppliesCost INT,
suppliesDate DATE
);


CREATE TABLE Services(
tavID SMALLINT,    
servicesID SMALLINT PRIMARY KEY,
servicesName VARCHAR(50),
servicesStatus VARCHAR(50)
);

CREATE TABLE Sales (
tavID SMALLINT,
salesID SMALLINT PRIMARY KEY,
servicesID SMALLINT,
guestName VARCHAR(50),
salesDate DATE,
salesQuantity SMALLINT,
salesPrice INT
);

CREATE TABLE Guests (
guestID SMALLINT PRIMARY KEY,
guestName VARCHAR(50),
guestVIP SMALLINT,
guestBirthday SMALLINT,
guestCake DATE,
guestStatus VARCHAR(50),
guestNotes VARCHAR(500)

);


/* ALTER TABLES (I have questions on altering and primary keys ) */


ALTER TABLE Taverns
DROP COLUMN tavRats;

ALTER TABLE Taverns 
ADD PRIMARY KEY (tavID);

/* INSERTING DATA INTO TABLES */

INSERT INTO Taverns
VALUES
(1, 'Bears Den', 'Tempe', 'Jack', 3, 20),
(2, 'Fridays', 'Newark', 'Stacy', 2, 50),
(3, 'Purple Pub', 'Albany', 'Ryan', 1, 10),
(4, 'Harrys', 'San Diego', 'Kenny',1, 15),
(5, 'Roadhouse' 'Flint', 'Patrick',2, 300)

INSERT INTO Employees
VALUES
(1, 1, 'George', 'bartender')
(2, 2, 'Sally', 'bartender')
(3, 3, 'Dana', 'bartender')
(4, 4, 'Rick', 'bartender')
(5, 5, 'Steve', 'bartender')

INSERT INTO Supplies
VALUES
(1,1,'Vodka', 40, 5, 30, 1-15-19)
(1,1,'Whisky', 40, 5, 30, 1-15-19)
(1,1,'Vodka', 40, 5, 30, 1-15-19)
(1,1,'Tequila', 40, 5, 30, 1-15-19)
(1,1,'Vodka', 40, 5, 30, 1-15-19)


INSERT INTO Services
VALUES
(1,1,'Food','available')
(1,1,'Drink','available')
(1,1,'Food','available')
(1,1,'Snacks','not available')
(1,1,'Food','available')

INSERT INTO Sales
(1, 1, 1, 'Bob', 1-18-19, 3, 55,)
(1, 1, 1, 'Lisa', 1-18-19, 3, 55,)
(1, 1, 1, 'Kenny', 1-18-19, 3, 55,)
(1, 1, 1, 'Marge', 1-18-19, 3, 55,)
(1, 1, 1, 'Dufus', 1-18-19, 3, 55,)

INSERT INTO Guests 
VALUES
(1, Jaqueen, 1, 16, 1-16-19, 'good standing', 'sometimes rowdy')
(1, George, 1, 16, 1-16-19, 'good standing', 'sometimes sings')
(1, Summer, 1, 16, 1-16-19, 'prohibiited', 'call police if on premisis')
(1, Aiden, 1, 16, 1-16-19, 'good standing', 'sometimes rowdy')
(1, Frank, 1, 16, 1-16-19, 'preferred customer', 'spends lots of money')