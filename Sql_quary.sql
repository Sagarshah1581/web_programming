## Curomer Table

CREATE TABLE customer (
CustomerID int AUTO_INCREMENT,
Name varchar(255),
Address varchar(255),
Email varchar(255),
Driverlicence varchar(255),
Phonenumber int(10),
PRIMARY KEY (CustomerID)
);

## Employee Table

CREATE TABLE employee (
EmployeeID int AUTO_INCREMENT,
EmployeeNumber varchar(15),
Name varchar(255),
Position varchar(15),
Email varchar(255),
LoginID varchar(255),
Passwords varchar(255),
PRIMARY KEY (EmployeeID)
);


## Car Table

CREATE TABLE car (
carID int AUTO_INCREMENT,
carimage Blob,
Brend varchar(255),
Type varchar(255),
Hourly_price float(10),
PRIMARY KEY (carID)
);


## Inventory Table

CREATE TABLE Inventory (
InventoryID int AUTO_INCREMENT,
carID int,
PRIMaRY KEY (InventoryID),
FOREIGN KEY (carID) REFERENCES car(carID)
 );
 


## Reservation Table

CREATE TABLE reservation (
reservationID int AUTO_INCREMENT,
InventoryID int,
CutomerID int,
Pickup datetime,
Delivery datetime,
PRIMARY KEY (reservationID),
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID),
FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
