psql

CREATE DATABASE rest;
\c rest

CREATE TABLE foods (id SERIAL PRIMARY KEY, price INTEGER, name VARCHAR(255));

CREATE TABLE parties (id SERIAL PRIMARY KEY, food_id INTEGER, name VARCHAR(255));

CREATE TABLE _orders (id SERIAL PRIMARY KEY, food_id INTEGER, receipt INTEGER, party_id INTEGER, checkout BOOLEAN, name VARCHAR(255));
