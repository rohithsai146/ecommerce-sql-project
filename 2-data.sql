INSERT INTO customers (customer_id, full_name, gender, age) VALUES
(1, 'Ravi Kumar', 'Male', 28),
(2, 'Sneha Reddy', 'Female', 24),
(3, 'Amit Singh', 'Male', 35),
(4, 'Priya Sharma', 'Female', 31),
(5, 'John Doe', 'Male', 22);


INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Smartphone', 'Electronics', 20000),
(2, 'Laptop', 'Electronics', 55000),
(3, 'T-Shirt', 'Clothing', 800),
(4, 'Book', 'Books', 400),
(5, 'Washing Machine', 'Home Appliances', 15000);


INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2024-05-01', 20800),
(102, 2, '2024-05-03', 1600),
(103, 3, '2024-05-05', 55000),
(104, 4, '2024-05-07', 15400),
(105, 5, '2024-05-10', 400);


INSERT INTO order_items (order_item_id, order_id, product_id, quantity, item_price) VALUES
(1, 101, 1, 1, 20000),
(2, 101, 3, 1, 800),
(3, 102, 3, 2, 1600),
(4, 103, 2, 1, 55000),
(5, 104, 5, 1, 15000),
(6, 104, 4, 1, 400),
(7, 105, 4, 1, 400);

INSERT INTO delivery (delivery_id, order_id, delivery_status, delivery_date) VALUES
(1, 101, 'Delivered', '2024-05-04'),
(2, 102, 'Delivered', '2024-05-06'),
(3, 103, 'Canceled', NULL),
(4, 104, 'Delivered', '2024-05-09'),
(5, 105, 'Pending', NULL);
