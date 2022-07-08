CREATE TABLE `order_table` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `diaper` int,
  `accesory` int,
  `client_id` int,
  `time` timestamp
);

CREATE TABLE `client` (
  `client_id` int PRIMARY KEY AUTO_INCREMENT,
  `full_name` varchar(255),
  `address` varchar(255)
);
CREATE TABLE `brand` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `brand_name` varchar(255)
);


CREATE TABLE `sizing` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `size` varchar(255)
);

CREATE TABLE `diaper` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `brand` varchar(255),
  `name` varchar(255),
  `size` int,
  `stock` int,
  `perpackg` int,
  `price` int
);

CREATE TABLE `accesory` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `item` varchar(255),
  `brand` int,
  `size` varchar(255),
  `color` varchar(255)
);

CREATE TABLE `item_category` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `item` varchar(255)
);

ALTER TABLE `order` ADD FOREIGN KEY (`diaper`) REFERENCES `diaper` (`id`);
ALTER TABLE `order` ADD FOREIGN KEY (`accesory`) REFERENCES `accesory` (`id`);
ALTER TABLE `order` ADD FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`);
ALTER TABLE `diaper` ADD FOREIGN KEY (`brand`) REFERENCES `brand` (`id`);
ALTER TABLE `diaper` ADD FOREIGN KEY (`size`) REFERENCES `sizing` (`id`);
ALTER TABLE `accesory` ADD FOREIGN KEY (`item`) REFERENCES `item_category` (`id`);
ALTER TABLE `accesory` ADD FOREIGN KEY (`brand`) REFERENCES `brand` (`id`);

INSERT INTO brand (id, brand_name)
 VALUES (1,'Babysec'), (2,'Huggies'), (3,'Pampers'), (4,'Duffy'), (5,'Estrella');
 
 INSERT INTO sizing (id, size)
 VALUES (1, 'M'), (2, 'G'), (3, 'XG'), (4, 'XXG'), (5, 'XXXG'), (6, 'PREMATURO');
 
 
INSERT INTO diaper(id, brand, name, size, stock, prepackg, price)
VALUES ();

INSERT INTO order_table (id, diaper, accesory, client_id, time)
VALUES ();

INSERT INTO client (client_id, full_name, addrsess)
VALUES ();

INSERT INTO accesory (id, item, brand, size, color)
VALUES ();

INSERT INTO item_category (id, item)
VALUES ();