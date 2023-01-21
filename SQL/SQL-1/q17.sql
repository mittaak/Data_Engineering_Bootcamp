create database if not exists sql_challenge;
use sql_challenge;

create table if not exists Product
(
    product_id int,
    product_name varchar(50),
    unit_price int,
    CONSTRAINT pk PRIMARY KEY(product_id)
);

create table if not exists Sales
(
    seller_id int,
    product_id int,
    buyer_id int, 
    sale_date date,
    quantity int, 
    price int,
    CONSTRAINT fk FOREIGN KEY(product_id) REFERENCES Product(product_id)
);

select * from Sales;
select * from Product;

-- Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
-- between 2019-01-01 and 2019-03-31 inclusive.
-- Return the result table in any order.


