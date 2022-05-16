-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, 'false');
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', '25.99', 'false');
INSERT INTO products (name, price, can_be_returned) VALUES ('table', '124.99', 'true');
SELECT * FROM products;
SELECT name FROM products;
SELECT name, price FROM products;
INSERT INTO products (name, price, can_be_returned) VALUES ('vase', '14.95', 'true');
SELECT name FROM products WHERE can_be_returned = 't';
SELECT name FROM products WHERE price < 44.00;
SELECT name FROM products WHERE price > 22.50 AND price < 99.99;
UPDATE products SET price = price - 20.00;
DELETE FROM products WHERE price < 25.00;
UPDATE products SET price = price + 20.00;
UPDATE products SET can_be_returned = 'true';