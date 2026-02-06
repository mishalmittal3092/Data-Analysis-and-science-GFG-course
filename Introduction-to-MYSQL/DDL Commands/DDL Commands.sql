CREATE DATABASE IF NOT EXISTS nabelle;
USE nabelle;

DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    phone_no VARCHAR(15) PRIMARY KEY,
    name VARCHAR(100),
    birth_day DATE,
    mail VARCHAR(100),
    address VARCHAR(255)
);
DROP TABLE IF EXISTS Stores;
CREATE TABLE Stores (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    fr_owner VARCHAR(100),
    location VARCHAR(150),
    contact VARCHAR(20),
    contract_date DATE
);
DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory (
    product_id VARCHAR(50) PRIMARY KEY,   -- barcode
    product_quantity INT,
    manufacturing_date DATE,
    exp_date DATE,
    product_name VARCHAR(150),
    product_category VARCHAR(100),
    product_marked_price DECIMAL(10,2),
    product_discounted_percentage DECIMAL(5,2),
    product_img VARCHAR(255),
    rating DECIMAL(3,2),
    reviews TEXT
);
DROP TABLE IF EXISTS Transactions;
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id VARCHAR(50),
    qn INT,
    date_of_purchase DATETIME,
    billing_amount DECIMAL(10,2),
    payment_mode VARCHAR(50),
    phone_no VARCHAR(15),
    store_id INT,

    FOREIGN KEY (product_id) REFERENCES Inventory(product_id),
    FOREIGN KEY (phone_no) REFERENCES Users(phone_no),
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);
DROP TABLE IF EXISTS Stores_Employees;
CREATE TABLE Stores_Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    fr_owner VARCHAR(100),
    location VARCHAR(150),
    contact VARCHAR(20),
    contract_date DATE,

    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);
