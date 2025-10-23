CREATE TABLE product (
	product_id SERIAL,
	product_name VARCHAR(255),
	category_code INTEGER,
	gender VARCHAR(2),
	size VARCHAR(2),
	model_code INTEGER,
	price DECIMAL(8,2),
	descount_price DECIMAL(8,2),
	
	PRIMARY KEY (product_id),
	
	CONSTRAINT fk_category
		FOREIGN KEY (category_code)
		REFERENCES category (category_code)
		ON DELETE CASCADE
		ON UPDATE restrict,
		
	CONSTRAINT fk_model
		FOREIGN KEY (model_code)
		REFERENCES description (model_code)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

CREATE TABLE customer (
	customer_id SERIAL,
	name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(255),
	img_URL VARCHAR(50),
	
	PRIMARY KEY (customer_id)
);

CREATE TABLE category (
	category_code SERIAL,
	description VARCHAR(50),

	PRIMARY KEY (category_code)
);

CREATE TABLE images (
	product_id INTEGER,
	img_URL VARCHAR(50),
	
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
		REFERENCES product (product_id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

CREATE TABLE description (
	model_code SERIAL,
	description VARCHAR(255),
	notes VARCHAR(255),
	composition VARCHAR(255),
	
	PRIMARY KEY (model_code)
);

CREATE TABLE comments (
	comment_id SERIAL,
	customer_id INTEGER,
	product_id INTEGER,
	comment VARCHAR(255),
	rating INTEGER,
	
	PRIMARY KEY (comment_id),
	
	CONSTRAINT fk_customer
		FOREIGN KEY (customer_id)
		REFERENCES customer (customer_id)
		ON DELETE CASCADE
		ON UPDATE restrict,
		
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
		REFERENCES product (product_id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

CREATE TABLE orders(
	order_id SERIAL,
	email VARCHAR(50),
	postal_code VARCHAR(50),
	address VARCHAR(255),
	address_number VARCHAR(5),
	complement VARCHAR(50),
	district VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	
	order_items_id INTEGER,
	total_value DECIMAL(8,2),
	freight_company VARCHAR(50),
	order_date TIMESTAMP,
	
	PRIMARY KEY (order_id),
	
	CONSTRAINT fk_order_items
		FOREIGN KEY (order_items_id)
		REFERENCES order_items (order_items_id)
		ON DELETE CASCADE
		ON UPDATE restrict
);

CREATE TABLE order_items(
	order_items_id SERIAL,
	product_id INTEGER,
	
	PRIMARY KEY (order_items_id),
	
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
		REFERENCES product (product_id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

