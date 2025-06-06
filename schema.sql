drop database if exists dealership_db;

create database if not exists dealership_db;

use dealership_db;

CREATE TABLE dealerships (
    dealership_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(12),
     PRIMARY KEY (`dealership_id`)
);

CREATE TABLE vehicles (
	VIN VARCHAR(17),
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20),
    price DECIMAL(10,2),
    sold BOOLEAN, 
    PRIMARY KEY(`VIN`)
    );
    
    CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    PRIMARY KEY(dealership_id, VIN)
    );
    
    CREATE TABLE sales_contracts (
    contract_id INT auto_increment,
    VIN VARCHAR(17),
    sale_date Date,
    sale_price DECIMAL(10,2),
    customer_name VARCHAR(50),
    PRIMARY KEY (`contract_id`)
    );