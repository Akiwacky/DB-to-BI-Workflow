CREATE TABLE Categories (
categoryID SMALLINT IDENTITY(1,1) PRIMARY KEY, 
categoryName VARCHAR(50) NOT NULL, 
);

INSERT INTO Categories (categoryName) VALUES
('electronics'), 
('groceries'),
('clothing'),
('books');

CREATE TABLE PaymentMethod (
paymentMethodID SMALLINT IDENTITY(1,1) PRIMARY KEY,
methodName VARCHAR(50) NOT NULL,
);

INSERT INTO PaymentMethod (methodName) VALUES
('Credit Card'), 
('Paypal'),
('Bitcoin'),
('Google Pay'),
('Apple Pay');

CREATE TABLE Products (
productID SMALLINT IDENTITY(1,1) PRIMARY KEY,
productName VARCHAR(255) NOT NULL,
price DECIMAL(5,2) NOT NULL CHECK(price > 0),
stock SMALLINT NOT NULL,
categoryID SMALLINT NOT NULL,
FOREIGN KEY (categoryID) REFERENCES Categories (categoryID)
);

CREATE TABLE Customers (
customerID SMALLINT IDENTITY(1,1) PRIMARY KEY,
firstName VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL, 
email VARCHAR(255) UNIQUE NOT NULL,
address VARCHAR(255) NOT NULL,
);

CREATE TABLE Location (
LocationID SMALLINT IDENTITY(1,1) PRIMARY KEY,
City VARCHAR(50) NOT NULL,
CountryCode VARCHAR(50) NOT NULL,
Continent VARCHAR(50) NOT NULL, 
CustomerID SMALLINT NOT NULL,
FOREIGN KEY (customerID) REFERENCES Customers (customerID)
);

CREATE TABLE Orders (
orderID SMALLINT IDENTITY(1,1) PRIMARY KEY,
orderDate DATE NOT NULL CHECK(orderDate <= GETDATE()),
customerID SMALLINT NOT NULL,
paymentMethodID SMALLINT NOT NULL,
FOREIGN KEY (customerID) REFERENCES Customers (customerID),
FOREIGN KEY (paymentMethodID) REFERENCES PaymentMethod (paymentMethodID)
);

CREATE TABLE OrderDetails (
orderDetailsID SMALLINT IDENTITY(1,1) PRIMARY KEY,
orderID SMALLINT NOT NULL,
productID SMALLINT NOT NULL, 
quantity SMALLINT NOT NULL CHECK(quantity > 0), /* Check to ensure quantites are not zero */
FOREIGN KEY (orderID) REFERENCES Orders (orderID),
FOREIGN KEY (productID) REFERENCES Products (productID)
);

