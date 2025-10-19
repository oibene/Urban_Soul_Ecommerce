create table customer (
	customer_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	password text,
	img_URL text
);

create table shipping_address (
	postal_code integer,
	address_line varchar(100),
	address_number integer,
	address_complement varchar(50),
	district varchar(50),
	city varchar(50),
	state varchar(2),
	country varchar(50),
	customer_id integer references customer (customer_id)
);

create table product (
	product_id serial primary key,
	item_name varchar(50),
	price decimal(8,2),
	has_descount boolean,
	descount decimal(8,2),
	ranking integer,
	category varchar(50),
	item_size varchar(3),
	gender varchar(3),
	color varchar(25),
	composition varchar(255),
	description text
	
);

create table category (
	category_id serial primary key,
	category_type varchar(50)
	category_name varchar(50)
);
						
create table orders (
	order_id serial primary key,
	total_amount decimal(8,2),
	customer_id integer references customer (customer_id)
);

create table order_items (
	order_id integer references orders (order_id),
	product_id integer references product (product_id)
);

create table comments (
	comment_id serial primary key,
	ranking integer,
	comment_text text,
	likes integer,
	customer_id integer references customer (customer_id),
	product_id integer references product (product_id)
);
