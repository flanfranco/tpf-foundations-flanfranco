drop schema if exists olistdb;
create schema olistdb;

drop table if exists olistdb.order_customer; 
create table olistdb.order_customer (
    customer_id text PRIMARY KEY,
    customer_unique_id text,
	customer_zip_code_prefix integer,
	customer_city text,
	customer_state text
);

drop table if exists olistdb.orders; 
create table olistdb.orders (
    order_id text PRIMARY KEY,
    customer_id text,
	order_status text,
	order_purchase_timestamp timestamp,
	order_approved_at timestamp,
	order_delivered_carrier_date timestamp,
	order_delivered_customer_date timestamp,
	order_estimated_delivery_date timestamp,
	CONSTRAINT fk_order_customer
    	FOREIGN KEY(customer_id) 
			REFERENCES olistdb.order_customer(customer_id)
			ON DELETE CASCADE
);

drop table if exists olistdb.order_payments; 
create table olistdb.order_payments (
    order_id text,
    payment_sequential integer,
	payment_type text,
	payment_installments integer,
	payment_value numeric(12,2),
	PRIMARY KEY(order_id, payment_sequential),
	CONSTRAINT fk_order
    	FOREIGN KEY(order_id) 
			REFERENCES olistdb.orders(order_id)	
			ON DELETE CASCADE
);

drop table if exists olistdb.products;
create table olistdb.products (
    product_id text,
    product_category_name text,
    product_name_lenght integer,
    product_description_lenght integer,
    product_photos_qty integer,
    product_weight_g integer,
    product_length_cm integer,
    product_height_cm integer,
    product_width_cm integer,
	PRIMARY KEY(product_id)
);

drop table if exists olistdb.order_items; 
create table olistdb.order_items (
    order_id text,
    order_item_id integer,
	product_id text,
	seller_id text,
	shipping_limit_date timestamp,
	price numeric(12,2),
	freight_value numeric(12,2),
	PRIMARY KEY(order_id, order_item_id),
	CONSTRAINT fk_order
    	FOREIGN KEY(order_id) 
			REFERENCES olistdb.orders(order_id)	
			ON DELETE CASCADE,
	CONSTRAINT fk_products
    	FOREIGN KEY(product_id) 
			REFERENCES olistdb.products(product_id)	
			ON DELETE CASCADE			
);
