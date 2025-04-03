create database store_management;
USE store_management;
create table product (
id int auto_increment primary key,
name varchar(255) Not null,	
description varchar(255) default null,
price double default null,
stock int default null
);
INSERT INTO product (name, description, price, stock) 
VALUES ('Áo khoác', 'Vải len', 120000, 5);
INSERT INTO product (name, description, price, stock) 
VALUES ('Quần jean', 'vải jean cao cấp', 250000, 3);
INSERT INTO product (name, description, price, stock) 
VALUES ('Mũ kaki', 'vải kaki ', 35000, 15);
select * from product;
SELECT id, name, price FROM product;
SELECT id , name , price FROM product WHERE price < 1000000;
SET sql_safe_updates = 0;
UPDATE product
SET name =  'Dép'
Where name = 'Áo khoác'
;
UPDATE product
SET price = price + 5000;
UPDATE product
SET price = 200000 WHERE name = "Dép";
ALTER TABLE product
ADD COLUMN Barcode VARCHAR(255);
ALTER TABLE product
ADD COLUMN Warranty INT DEFAULT 6;

DELETE FROM product;
