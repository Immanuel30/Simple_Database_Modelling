BEGIN;

-- The DROP statements have been added to ensure that no errors occur if the script is mistakenly run more than once
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS product CASCADE;

create table customers(
	customer_id int primary key,
	name varchar (225),
	email varchar (225),
	address text
);

create table orders(
	order_id int primary key,
	order_date date,
	quantity int,
	address text,
	customer_id int,
	product_id int,
	foreign key(customer_id) references customers(customer_id),
	foreign key(product_id) references product(product_id)
);

create table product(
	product_id int primary key,
	name varchar,
	price decimal (20, 2),
	category text
);

END;
