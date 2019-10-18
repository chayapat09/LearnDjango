USE sql_onlinetest;

CREATE TABLE Customer(
	Customer_id int AUTO_INCREMENT,
    Customer_name VARCHAR(50) NOT NULL,
    Customer_Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_code int,
    CONSTRAINT C1 PRIMARY KEY(Customer_id,customer_name),
    CONSTRAINT C2 UNIQUE (Customer_name)
);

CREATE TABLE Ordert(
	Order_id int AUTO_INCREMENT,
    Order_Date date,
    Customer_id int NOT NULL,
    CONSTRAINT C1 FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT C2 PRIMARY KEY(Order_id)
);

CREATE TABLE Product(
	Product_id int AUTO_INCREMENT,
    Product_description text,
    Product_finish ENUM('Cherry','Natural Ash','White Ash','Red Oak','Natural Oak','Walnut'),
    Standard_price DECIMAL(6,2),
    CONSTRAINT C1 PRIMARY KEY(Product_id)
);

CREATE TABLE Order_line(
	Order_id int NOT NULL,
    Product_id int NOT NULL,
    Ordered_Quantity int,
    FOREIGN KEY(Product_id) REFERENCES Product(Product_id),
    FOREIGN KEY(Order_id) REFERENCES ORDERt(Order_id)
)