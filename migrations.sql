psql

CREATE DATABASE rest;
\c rest

CREATE TABLE foods (
  id SERIAL PRIMARY KEY,
  cents INTEGER,
  cuisine VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE parties (
  id SERIAL PRIMARY KEY,
  table_number INTEGER,
  name VARCHAR(255),
  is_paid BOOLEAN
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  food_id INTEGER,
  party_id INTEGER
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username INTEGER,
  password_hash INTEGER
);

-- CREATE TABLE receipts (id SERIAL PRIMARY KEY, party_id INTEGER, name VARCHAR(255));
--
-- CREATE TABLE guests (id SERIAL PRIMARY KEY, order_id INTEGER, name VARCHAR(255));
