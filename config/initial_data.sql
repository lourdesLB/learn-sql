-------------------- TABLES DEFINITION ----------------

-- Salesman
CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50), 
    commission DECIMAL(3,2)
);

-- Customer
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

-- Order
CREATE TABLE order_item (
    order_id INT PRIMARY KEY,
    customer_id INT,
    salesman_id INT,
    purch_amt DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

-------------------- INITIAL DATA ---------------------

-- Salesman
INSERT INTO salesman (salesman_id, name, city, commission) VALUES 
    (5001, 'James Hooq', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5003, 'Lauson Hen', NULL, 0.12),
    (5007, 'Paul Adam', 'Rome', 0.13);

-- Customer
INSERT INTO customer (customer_id, name, city, grade, salesman_id) VALUES 
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3001, 'Brad Guzan', 'London', NULL, NULL),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3007, 'Brad Davis', 'San Jose', 200, 5003),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5002),
    (3003, 'Jozy Altidore', 'Moncow', 200, 5007);

-- Order
INSERT INTO order_item (order_id, customer_id, salesman_id, purch_amt, order_date) VALUES 
    (70001, 3005, 5002, 150.5, '2016-10-05'),
    (70009, 3001, NULL, 270.65, '2016-09-10'),
    (70002, 3002, 5001, 65.26, '2016-10-05'),
    (70004, 3009, NULL, 110.5, '2016-08-17'),
    (70007, 3005, 5002, 948.5, '2016-09-10'),
    (70005, 3007, 5001, 2400.6, '2016-07-27'),
    (70008, 3004, 5001, 5760.0, '2016-09-10'),
    (70010, 3004, 5006, 1983.43, '2016-10-10'),
    (70003, 3009, 5003, 2480.4, '2016-10-10'),
    (70012, 3008, 5002, 250.45, '2016-06-27'),
    (70011, 3003, 5007, 75.29, '2016-08-17');