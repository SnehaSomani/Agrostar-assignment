DROP SCHEMA IF EXISTS eCommerce;
CREATE SCHEMA eCommerce;
USE eCommerce;

CREATE TABLE Supplier (
	supplier_id INT PRIMARY KEY,
        customer_id INT,
	Company_name VARCHAR(50) NOT NULL,
	supplier_name VARCHAR(20) NOT NULL,
        contact_no VARCHAR(10) NOT Null,
        address VARCHAR(50) NOT Null,
        city VARCHAR(20) NOT NULL,
        email VARCHAR(20) NOT NULL,
	discount INT
    );

CREATE TABLE Product (
        product_id INT PRIMARY KEY,
        product_name VARCHAR(50) NOT NULL,
        product_description VARCHAR(50) NOT NULL,
        quantity INT,
        price INT,
        size INT,
        color VARCHAR(20) NOT NULL,
        discount INT,
        category_id INT,
        supplier_id INT NOT NULL,
        FOREIGN KEY(supplier_id) REFERENCES Supplier(supplier_id) ON DELETE CASCADE
     );   

CREATE TABLE Category (
        category_id INT PRIMARY KEY,
        category_name VARCHAR(50) NOT NULL,
        category_description VARCHAR(50) NOT NULL
     );

ALTER TABLE Product
ADD FOREIGN KEY(category_id)
REFERENCES Category(category_id)
ON DELETE CASCADE;  
 
CREATE TABLE Customer (
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	DOB DATE NOT NULL,
	gender VARCHAR(1) NOT NULL,
	email VARCHAR(20) NOT NULL,
        contact_no VARCHAR(10) NOT NULL,
        address VARCHAR(50) NOT NULL,
        city VARCHAR(20) NOT NULL
    );

CREATE TABLE Payment (
	payment_id INT PRIMARY KEY,
        customer_id INT NOT NULL,
	payment_type VARCHAR(50) NOT NULL,
        cc_number VARCHAR(16) NOT NULL,
        cc_type VARCHAR(20) NOT NULL,
        FOREIGN KEY(customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
    );

ALTER TABLE Supplier
ADD FOREIGN KEY(customer_id)
REFERENCES Customer(customer_id)
ON DELETE CASCADE;  

CREATE TABLE Cart (
         cart_id INT PRIMARY KEY,
         order_id INT,
         product_id INT NOT NULL,
         quantity INT NOT NULL,
         discount INT,
         FOREIGN KEY(product_id) REFERENCES Product(product_id) ON DELETE CASCADE
     );
 
ALTER TABLE Order
ADD FOREIGN KEY(cart_id)
REFERENCES cart(cart_id)
ON DELETE CASCADE; 

CREATE TABLE Order (
        order_id INT PRIMARY KEY,
        customer_id INT NOT NULL,
        cart_id INT INT NOT NULL,
        payment_id INT NOT NULL,
        payment_date DATE,
        order_date DATE NOT NULL,
        ship_date DATE,
        fullfillment_date DATE,
        cancellation_date DATE,
        return_date DATE,
        FOREIGN KEY(customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
        FOREIGN KEY(payment_id) REFERENCES Payment(payment_id) ON DELETE CASCADE, 
        FOREIGN KEY(cart_id) REFERENCES cart(cart_id) ON DELETE CASCADE
    );
