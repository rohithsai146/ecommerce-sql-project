-- Customers Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  full_name VARCHAR(100),
  gender VARCHAR(10),
  age INT
);

-- Products Table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10, 2)
);

-- Orders Table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  item_price DECIMAL(10, 2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Delivery Table
CREATE TABLE delivery (
  delivery_id INT PRIMARY KEY,
  order_id INT,
  delivery_status VARCHAR(20),
  delivery_date DATE,
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
