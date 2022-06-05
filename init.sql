-- postgresql
--  command -> \du 
SELECT * FROM PG_USER;

-- \list 또는 \l
SELECT datname FROM pg_database -- 전체 데이터베이스 조회
SELECT datname FROM pg_database WHERE datistemplate = false -- 사용자가 생성한 데이터베이스만 조회
select nspname from pg_catalog.pg_namespace -- 현재 db의 전체 스키마 조회
select tablename from pg_tables -- 전체 테이블 조회
