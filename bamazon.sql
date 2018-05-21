DROP DATABASE IF EXISTS bamzonDB;

CREATE DATABASE bamzonDB;

USE bamzonDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  item_id INT NOT NULL,
  product_name VARCHAR (60) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL (10,2) NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  department_id INT NOT NULL,
  department_name VARCHAR (60) NOT NULL,
  over_head_costs DECIMAL (10,2) NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0011, "JS for idiots","Books",2.00,10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0012, "Gold Hoop Earrings","Jewelry",100.00,5);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0013, "Yellow Tshirt","Clothing",11.00,20);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0014, "Node.js is Life","Books",15.00,20);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0015, "UCLA Gymnastics Sweatshirt","Clothing",25.00,15);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0016, "Black Beanie","Clothing",5.00,10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0017, "Black Knit Scarf","Clothing",15.00,17);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0018, "Wu Tang Anthology","Books",20.00,50);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0019, "Sapphire Pendant","Jewelry",75.00,5);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (0020, "The One Dollar Book","Books",1.00,10);