#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
	CREATE USER dockeru1;
	CREATE DATABASE docker;
	GRANT ALL PRIVILEGES ON DATABASE docker TO dockeru1;
        CREATE EXTENSION postgres_fdw SCHEMA public;
	CREATE DATABASE demo
EOSQL
