CREATE TABLE products (
	product_id SERIAL NOT NULL,
	product_name VARCHAR(255),
	category_code INTEGER,
	gender VARCHAR(2),
	size VARCHAR(2),
	color VARCHAR(50),
	model_code INTEGER,
	price DECIMAL(8,2),
	descount_price DECIMAL(8,2),
	
	PRIMARY KEY (product_id),
	
	CONSTRAINT fk_category
		FOREIGN KEY (category_code)
		REFERENCES categories (category_code)
		ON DELETE CASCADE
		ON UPDATE restrict,
		
	CONSTRAINT fk_model
		FOREIGN KEY (model_code)
		REFERENCES details (model_code)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

CREATE TABLE customers (
	customer_id BIGINT NOT NULL,
	name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(255),
	img_url VARCHAR(50),
	
	PRIMARY KEY (customer_id)
);

CREATE TABLE categories (
	category_code SERIAL NOT NULL,
	description VARCHAR(50),

	PRIMARY KEY (category_code)
);

CREATE TABLE images (
	product_id INTEGER,
	img_URL VARCHAR(50),
	
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
		REFERENCES products (product_id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

CREATE TABLE details (
	model_code SERIAL NOT NULL,
	description VARCHAR(255),
	notes VARCHAR(255),
	composition VARCHAR(255),
	
	PRIMARY KEY (model_code)
);

CREATE TABLE comments (
	comment_id SERIAL NOT NULL,
	customer_id INTEGER,
	product_id INTEGER,
	comment VARCHAR(255),
	rating INTEGER,
	
	PRIMARY KEY (comment_id),
	
	CONSTRAINT fk_customer
		FOREIGN KEY (customer_id)
		REFERENCES customers (customer_id)
		ON DELETE CASCADE
		ON UPDATE restrict,
		
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
		REFERENCES products (product_id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

CREATE TABLE orders(
	order_id SERIAL NOT NULL,
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
);

CREATE TABLE order_items(
	order_items_id SERIAL NOT NULL,
	product_id INTEGER,
	
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
		REFERENCES products (product_id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);
