-- USER
    -- id
    -- name
    -- social
    -- state
    -- init_time
    -- login_time
    -- logout_time
    -- save_status
CREATE TABLE public.user (
    id serial PRIMARY KEY,
    name VARCHAR ( 255 ),
    password VARCHAR ( 255 ) NOT NULL,
    email VARCHAR ( 255 ),
    social VARCHAR ( 255 ),
    state VARCHAR ( 255 ),
    create_time TIMESTAMP NOT NULL,
    login_time TIMESTAMP,
    logout_time TIMESTAMP,
    save_status BOOLEAN NOT NULL
);

-- basic bord
CREATE TABLE public.bord (
    id serial PRIMARY KEY,
    description TEXT
);

-- 리테일 스토어 erd
-- https://www.freeprojectz.com/entity-relationship/retail-store-management-system-er-diagram
-- 이커머스 erd


CREATE TABLE public.login (
    login_id VARCHAR ( 100 ) PRIMARY KEY,
    login_role_id VARCHAR ( 100 ),
    login_username VARCHAR ( 100 ),
    user_password VARCHAR ( 100 )
);

create table public.roles (
    role_id varchar ( 100 ) primary key ,
    role_name varchar ( 100 ),
    role_desc varchar ( 255 )
);

create table public.payment (
  pay_id varchar ( 100 ) primary key ,
  pay_amt varchar ( 100 ),
  pay_stu_id varchar ( 100 ),
  pay_date date,
  pay_desc varchar ( 255 )
);

create table public.product (
    pro_id varchar ( 100 ) primary key ,
    pro_num numeric,
    pro_cus_id varchar ( 100 ),
    pro_desc varchar ( 255 ),
    pro_items varchar ( 255 ),
    pro_type varchar ( 100 )
);