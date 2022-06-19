-- postgresql
--  command -> \du 
 SELECT * FROM PG_USER;
 create user [user_name] with encrypted password ['mypassword'];
 grant all privileges on database sample_db to [user_name];
-- \list 또는 \l
SELECT datname FROM pg_database -- 전체 데이터베이스 조회
SELECT datname FROM pg_database WHERE datistemplate = false -- 사용자가 생성한 데이터베이스만 조회
select nspname from pg_catalog.pg_namespace -- 현재 db의 전체 스키마 조회
select tablename from pg_tables -- 전체 테이블 조회

-- schema 생성
CREATE SCHEMA myschema;
-- 다른 사용자가 소유한 스키마를 생성할 경우에는
CREATE SCHEMA schemaname AUTHORIZATION username;
-- 스키마 이름 변경
ALTER SCHEMA schema_name RENAME TO new_schema_name;
-- 스키마 소유자 변경
ALTER SCHEMA username OWNER TO new_username;
-- 스키마 삭제
DROP SCHEMA schema_name CASCADE;

-- db create databases
CREATE DATABASE name
    [ [ WITH ] [ OWNER [=] user_name ]
           [ TEMPLATE [=] template ]
           [ ENCODING [=] encoding ]
           [ LOCALE [=] locale ]
           [ LC_COLLATE [=] lc_collate ]
           [ LC_CTYPE [=] lc_ctype ]
           [ TABLESPACE [=] tablespace_name ]
           [ ALLOW_CONNECTIONS [=] allowconn ]
           [ CONNECTION LIMIT [=] connlimit ]
           [ IS_TEMPLATE [=] istemplate ] ]
