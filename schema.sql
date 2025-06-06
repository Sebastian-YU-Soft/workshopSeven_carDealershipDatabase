drop database if exists dealership_db;

create database if not exists dealership_db;

use dealership_db;

create table dealerships( 
dealership_id integer not null auto_increment,
 name VARCHAR(50) not null, 
address VARCHAR(50),
 phone VARCHAR(12), 
 primary key ('dealership_id') 
 );

create table vehicles (
vin varchar(17),
make varchar(50),
model varchar(50),
year INT,
color varchar(20),
price decimal(10,2),
sold boolean,
primary key('VIN')
);