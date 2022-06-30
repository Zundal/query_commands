-- https://creately.com/diagram/example/hjom4wgu2/e-commerce-erd
-- ecomus application erd
CREATE TABLE customer (
    customer_id varchar(200) not null primary key ,
    first_name varchar(50),
    last_name varchar(50),
    address1 varchar(200),
    address2 varchar(200),
    city varchar(200),
    postal_code int,
    country varchar(200),
    tel_no varchar(200),
    email varchar(200),
    credit_card varchar(200),
    credit_card_type varchar(20),
    card_expiry_data date
);

CREATE TABLE category (
  category_id varchar(200) not null primary key ,
  category_name varchar(200)
);

CREATE TABLE products (
    product_id varchar(200) not null  primary key ,
    product_name varchar(200),
    category_id varchar(200),
    quantity int,
    price int,
    product_description varchar(255),
    product_review varchar(255)
);

CREATE TABLE orders (
    order_id varchar(50) not null  primary key ,
    customer_id varchar(200),
    payment_id varchar(200),
    order_date date
);

CREATE TABLE payment (
    payment_id varchar(50) not null primary key ,
    payment_type varchar(50),
    payment_statue varchar(50),
    payment_date date,
    allowed bit
);

CREATE TABLE order_detail (
    order_detail_id varchar(50) not null primary key ,
    order_id varchar(50),
    product_id varchar(50),
    price int,
    quantity int,
    total int
);
