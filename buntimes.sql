CREATE DATABASE buntimes;

CREATE TABLE burgers (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  image_url VARCHAR(400) NOT NULL,
  vegan BOOLEAN NOT NULL,
  mood_tag VARCHAR(200) NOT NULL,
  size VARCHAR(200) NOT NULL,
  shop_id INTEGER NOT NULL,
  FOREIGN KEY (shop_id) REFERENCES shops (id) ON DELETE CASCADE
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password_digest VARCHAR(400) NOT NULL,
  vegan BOOLEAN NOT NULL
);

CREATE TABLE shops(
id SERIAL4 PRIMARY KEY,
name VARCHAR(200) NOT NULL,
address VARCHAR(200) NOT NULL,
latitude   NUMERIC(9, 6) NOT NULL,
longitude  NUMERIC(9, 6) NOT NULL,
website_url VARCHAR(500) NOT NULL
);

INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('8bit - 360', '1/360 Collins St Melbourne, Australia 3000', '-37.8163491', '144.9622338', 'http://www.eat8bit.com.au/');