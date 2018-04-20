DROP TABLE favourites;
DROP TABLE burgers;
DROP TABLE shops;
DROP TABLE users;


-- CREATE DATABASE buntimes;

CREATE TABLE burgers (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  image_url VARCHAR(400) ,
  vegan BOOLEAN NOT NULL,
  patty VARCHAR(400) NOT NULL,
  price DECIMAL(4,2) NOT NULL,
  flavour VARCHAR(200) NOT NULL,
  healthy BOOLEAN NOT NULL,
  size VARCHAR(200) NOT NULL,
  shop_id INTEGER NOT NULL,
  FOREIGN KEY (shop_id) REFERENCES shops (id) ON DELETE CASCADE
);

CREATE TABLE favourites (
  id SERIAL4 PRIMARY KEY,
  burger_id INTEGER NOT NULL,
  FOREIGN KEY (burger_id) REFERENCES burgers (id) ON DELETE CASCADE,
  user_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE 
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password_digest VARCHAR(400) NOT NULL,
  latitude   NUMERIC(9, 6) NOT NULL,
  longitude  NUMERIC(9, 6) NOT NULL,
  vegan BOOLEAN NOT NULL
);

-- ALTER TABLE users add column latitude NUMERIC(9, 6);
-- ALTER TABLE users add column longitude NUMERIC(9, 6);

CREATE TABLE shops(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  address VARCHAR(200) NOT NULL,
  latitude   NUMERIC(9, 6) NOT NULL,
  longitude  NUMERIC(9, 6) NOT NULL,
  website_url VARCHAR(500) NOT NULL
);


-- 8Bit burger shop_id 2
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('8bit with Cheese', 'false', 'meat', 10.50, 'small', 'false', 'medium', 2 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('After Burner', 'false', 'meat', 11.50, 'spicy', 'false', 'medium', 2 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Altered Beast', 'false', 'meat', 11.50, 'bacon', 'false', 'medium', 2 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Golden Axe', 'false', 'bird', 12.00, 'spicy', 'false', 'medium', 2 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Double Dragon', 'false', 'meat', 14.50, 'standard', 'false', 'large', 2 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('1UP Mushroom Burger', 'false', 'vegetable', 11.00, 'standard', 'false', 'medium', 2 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Zelda', 'false', 'vegetable', 13.50, 'standard', 'true', 'medium', 2 );


-- royal stacks shop_id 3
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Single Stack', 'false', 'meat', 9.90, 'standard', 'false', 'medium', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Double Stack', 'false', 'meat', 13.80, 'standard', 'false', 'large', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Prince Harry', 'false', 'meat', 11.50, 'fancy', 'false', 'medium', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('The King', 'false', 'meat', 13.80, 'fancy', 'false', 'large', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Miss Elizabeth', 'false', 'meat', 11.50, 'fancy', 'true', 'small', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Saint', 'false', 'meat', 14.40, 'spicy', 'false', 'large', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Bacon Bacon', 'false', 'meat', 14.40, 'bacon', 'false', 'large', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Queen Bee', 'false', 'vegetable', 11.50, 'fancy', 'true', 'medium', 3 );
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('The Kavorka', 'false', 'bird', 13.50, 'spicy', 'false', 'medium', 3 );

-- UPDATE burgers SET patty = 'bird' WHERE id = 9;

-- concrete boots shop_id 4
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Meadowlands', 'false', 'vegetable', 12.00, 'fancy', 'true', 'medium', 4);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Gambino', 'false', 'bird', 13.00, 'standard', 'true', 'medium', 4);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Torrio', 'true', 'vegetable', 13.00, 'fancy', 'true', 'medium', 4);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Boots', 'false', 'meat', 11.00, 'standard', 'false', 'medium', 4);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Squizzy', 'false', 'meat', 13.00, 'bacon', 'false', 'medium', 4);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Snowy', 'false', 'fish', 16.00, 'fancy', 'true', 'medium', 4);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Glenrowan', 'false', 'meat', 13.00, 'game', 'false', 'medium', 4);

-- burger burger shop_id 5
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Simply Surrey Cheese Burger', 'false', 'meat', 12.00, 'standard', 'false', 'medium', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Belmore Bacon', 'false', 'meat', 14.00, 'bacon', 'false', 'medium', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Double Monty Albert', 'false', 'meat', 17.00, 'spicy', 'false', 'large', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('United Union', 'false', 'meat', 16.00, 'egg', 'false', 'large', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Cam-baa-baa-well', 'false', 'meat', 14.00, 'fancy', 'true', 'medium', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Chicky Canterbury', 'false', 'bird', 14.00, 'spicy', 'false', 'medium', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Chatham Chatterbox', 'true', 'vegetable', 12.00, 'standard', 'true', 'medium', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Cheese Burger', 'false', 'meat', 8.00, 'standard', 'false', 'small', 5);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Chicken Burger', 'false', 'bird', 8.00, 'standard', 'false', 'medium', 5);

-- burger boys shop/id 6
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Kentucky Derby', 'false', 'bird', 13.00, 'spicy', 'false', 'medium', 6);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Rushmore', 'false', 'meat', 13.50, 'bacon', 'false', 'medium', 6);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Royale with Cheese', 'false', 'meat', 10.50, 'standard', 'false', 'medium', 6);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Classic', 'false', 'meat', 14.50, 'bacon', 'false', 'large', 6);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Long Haul', 'false', 'meat', 12.00, 'fancy', 'false', 'medium', 6);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Mt Fuji', 'true', 'vegetable', 12.50, 'fancy', 'true', 'medium', 6);

-- grilld southern cross id 7
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Simply Grilld', 'false', 'meat', 10.00, 'standard', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Crispy Bacon & Cheese', 'false', 'meat', 12.50, 'bacon', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Mighty Melbourne', 'false', 'meat', 14.00, 'egg', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Nourish & Flourish', 'false', 'meat', 14.00, 'fancy', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Summer Sunset', 'false', 'meat', 13.00, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Mustard & Pickled!', 'false', 'meat', 12.00, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Chilli Addict', 'false', 'meat', 14.00, 'spicy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Wagyu Wunder', 'false', 'meat', 15.90, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Sir Truffle', 'false', 'meat', 15.90, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Good Karma', 'false', 'meat', 15.90, 'standard', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Bar-B-Cow', 'false', 'meat', 15.90, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Underbelly', 'false', 'meat', 15.90, 'game', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Pork & Pine', 'false', 'meat', 15.90, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Moroccan Lamb', 'false', 'meat', 14.00, 'game', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Baa Baa Burger', 'false', 'meat', 14.00, 'game', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Sweet Chilli Chicken', 'false', 'bird', 11.50, 'spicy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Zen Hen', 'false', 'bird', 12.00, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Simon Says', 'false', 'bird', 13.00, 'bacon', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Hot Bird', 'false', 'bird', 14.00, 'spicy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Bird & Brie', 'false', 'bird', 13.00, 'fancy', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Caesars Palace', 'false', 'bird', 13.00, 'egg', 'false', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Amazing Vegan Cheeseburger', 'true', 'vegetable', 13.50, 'fancy', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Hemp Therapea', 'false', 'vegetable', 13.50, 'standard', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Garden Goodness', 'false', 'vegetable', 12.50, 'standard', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Field of Dreams', 'false', 'vegetable', 12.50, 'standard', 'true', 'medium', 7);
INSERT INTO burgers (name, vegan, patty, price, flavour, healthy, size, shop_id) VALUES ('Veggie Vitality', 'true', 'vegetable', 12.50, 'fancy', 'true', 'medium', 7);


INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('8bit - 360', '1/360 Collins St Melbourne, Australia 3000', '-37.8163491', '144.9622338', 'http://www.eat8bit.com.au/');
INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('Royal Stacks - CDB', '470 Collins Street, Melbourne, Australia 3000', '-37.817562', '144.9583012', 'www.http://royalstacks.com.au/');
INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('Concrete Boots', '381 Burnley Street, Richmond, Australia 3121', '-37.8262569', '145.0073867', 'https://www.concretebootsbar.com/');
INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('Burger Burger', '135 Union Road, Surrey Hills, Australia 3127', '-37.8237519', '145.0978765', 'http://www.burgerburger.com.au/');
INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('Burger Boys', '32 Church Lane, Melbourne, Australia 3000', '-37.8171335', '144.9575049', 'http://burgerboys.com.au/');
INSERT INTO shops (name, address, latitude, longitude, website_url) VALUES ('Grilld - Southern Cross', 'Southern Cross Station, Melbourne, Australia 3000', '-37.81907', '144.95308', 'https://www.grilld.com.au/menu/victoria/melbourne');