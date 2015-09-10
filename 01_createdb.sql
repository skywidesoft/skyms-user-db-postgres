CREATE USER userrepo WITH PASSWORD 'userrepo';
CREATE DATABASE userrepo;
GRANT ALL PRIVILEGES ON DATABASE userrepo to userrepo;
\connect userrepo;
CREATE SCHEMA db_extensions;
GRANT ALL ON SCHEMA db_extensions to userrepo;
CREATE EXTENSION pgcrypto SCHEMA db_extensions;
ALTER DATABASE userrepo SET search_path TO public, db_extensions;
