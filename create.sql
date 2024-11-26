CREATE SCHEMA IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(20) NOT NULL, 
manufacturer VARCHAR(50) NOT NULL, 
model VARCHAR(50) NOT NULL, 
year INT NOT NULL, 
color VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
 name VARCHAR(50) NOT NULL, 
 phone_number VARCHAR(20) NOT NULL, 
 email VARCHAR(50) NOT NULL, 
 address VARCHAR(100) NOT NULL, 
 city VARCHAR(50) NOT NULL, 
 state_province VARCHAR(50) NOT NULL, 
 country VARCHAR(50) NOT NULL,
 postal_code VARCHAR(10) NOT NULL,
 car_id INT,
 FOREIGN KEY (car_id) REFERENCES cars(id)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
staff_id INT NOT NULL PRIMARY KEY , 
name VARCHAR(50) NOT NULL,
store VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
invoice_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
date_ DATE NOT NULL,
car_id INT,
staff_member INT,
customer_id INT,
FOREIGN KEY (car_id) REFERENCES cars(id),
FOREIGN KEY (staff_member) REFERENCES salespersons(staff_id),
FOREIGN KEY (customer_id) REFERENCES customers(id)
); 
