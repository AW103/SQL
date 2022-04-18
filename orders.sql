
CREATE TABLE orders(
    order_id SERIAL,
    person_id INT,
    product_name VARCHAR(40),
    product_price DEC(4, 2),
    quantity INT
);

INSERT INTO orders(person_id, product_name,product_price, quantity)
VALUES(1,'panini', 8.99,1),
(2,'enchiladas', 1.50,3),
(2,'grilled cheese', 3.50,2),
(3,'shaggy dog roll', 10.99, 1),
(1,'salad', 7.50, 4)

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price * quantity)
FROM orders


-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;
