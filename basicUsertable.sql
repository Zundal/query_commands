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
