DROP DATABASE IF EXISTS bamzonDB;

CREATE DATABASE bamzonDB;

USE bamzonDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR (60) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL (10,2) NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR (60) NOT NULL,
  over_head_costs DECIMAL (10,2) NOT NULL,
  PRIMARY KEY (id)
);