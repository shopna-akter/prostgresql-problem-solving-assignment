-- 📘 Books Table
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  author VARCHAR(100) NOT NULL,
  price DECIMAL(6, 2) CHECK (price >= 0),
  stock INT,
  published_year INT
);

-- 👥 Customers Table
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  joined_date DATE DEFAULT CURRENT_DATE
);

-- 🛒 Orders Table
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(id),
  book_id INT REFERENCES books(id),
  quantity INT CHECK (quantity > 0),
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Books Data
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
('Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
('You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),
('Refactoring', 'Martin Fowler', 50.00, 3, 1999),
('Database Design Principles', 'Jane Smith', 20.00, 0, 2018);

-- Customers Data
INSERT INTO customers (name, email, joined_date) VALUES
('Alice', 'alice@email.com', '2023-01-10'),
('Bob', 'bob@email.com', '2022-05-15'),
('Charlie', 'charlie@email.com', '2023-06-20');

-- Orders Data
INSERT INTO orders (customer_id, book_id, quantity, order_date) VALUES
(1, 2, 1, '2024-03-10'),
(2, 1, 1, '2024-02-20'),
(1, 3, 2, '2024-03-05');

-- Retrieve books where stock is 0
SELECT title
FROM books
WHERE stock = 0;

-- Get the book with the highest price
SELECT *
FROM books
ORDER BY price DESC
LIMIT 1;

-- Count how many orders each customer placed
SELECT c.name, COUNT(o.id) AS total_orders
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name;

-- Calculate total revenue by multiplying price with quantity
SELECT SUM(b.price * o.quantity) AS total_revenue
FROM orders o
JOIN books b ON o.book_id = b.id;

-- Filter customers with more than one order
SELECT c.name, COUNT(o.id) AS orders_count
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.id) > 1;

-- Calculate the average price of all books
SELECT ROUND(AVG(price), 2) AS avg_book_price
FROM books;

-- Update price with a 10% increase for books published before 2000
UPDATE books
SET price = price * 1.10
WHERE published_year < 2000;

-- Delete customers who are not found in the orders table
DELETE FROM customers
WHERE id NOT IN (
  SELECT DISTINCT customer_id FROM orders
);
