psql

CREATE DATABASE rest;
\c rest

CREATE TABLE foods (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  cents INTEGER,
  cuisine VARCHAR(255)
);

CREATE TABLE parties (
  id SERIAL PRIMARY KEY,
  table_number INTEGER,
  is_paid BOOLEAN
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  party_id INTEGER,
  food_id INTEGER
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  password_hash VARCHAR(255)
);


-- CREATE TABLE receipts (id SERIAL PRIMARY KEY, party_id INTEGER, name VARCHAR(255));
-- CREATE TABLE guests (id SERIAL PRIMARY KEY, order_id INTEGER, name VARCHAR(255));
