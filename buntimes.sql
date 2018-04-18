CREATE DATABASE goodfoodhunting;

CREATE TABLE burgers (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200),
  image_url VARCHAR(400),
  vegan BOOLEAN,
  mood_tag VARCHAR(200),
  size VARCHAR(200),
  shop_id INTEGER FOREIGN KEY
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  username VARCHAR(100),
  email VARCHAR(100) NOT NULL,
  password_digest VARCHAR(400) NOT NULL,
  vegan BOOLEAN
);

CREATE TABLE shops(
id SERIAL4 PRIMARY KEY,
name VARCHAR(200),
address VARCHAR(200),
latitude   NUMERIC(9, 6),
longitude  NUMERIC(9, 6),
website_url VARCHAR(500)
);