# SQL---Joins-Project-MySQL-

## 📌 Project Overview
This project is focused on mastering SQL JOIN concepts using a real-world customer and orders dataset.  
The goal of this project was to understand how different types of joins work in practical data analysis scenarios.

Instead of only learning theory, I solved multiple SQL queries using INNER JOIN, LEFT JOIN, RIGHT JOIN, and aggregation with joins.

This project simulates real business cases like:
- Customers who placed orders
- Customers with no orders
- Invalid order records
- Total spending analysis

---

##  Dataset Used
Two tables were created manually in MySQL:

### 1. Customers Table
Contains:
- customer_id (Primary Key)
- customer_name
- city

### 2. Orders Table
Contains:
- order_id (Primary Key)
- customer_id (Foreign Key - with NULL & invalid values)
- order_amount

Each table contains 50+ records including NULL and mismatched data to practice real-world JOIN scenarios.

---

##  JOIN Concepts Used in This Project

---

### 🔹 INNER JOIN
INNER JOIN was used to retrieve only the matching records present in both tables (customers and orders).  
This helped in identifying customers who have placed valid orders.

Concept:
- Returns only matched records from both tables
- Excludes NULL and non-matching rows
- Used for relational data analysis

---

### 🔹 LEFT JOIN
LEFT JOIN was used to display all customers, including those who have not placed any orders.  
If no matching order exists, the order columns return NULL.

Concept:
- Returns all rows from the left table (customers)
- Returns matching rows from the right table (orders)
- Shows NULL for unmatched records

Project Usage:
- Finding customers with no orders
- Identifying inactive customers

---

### 🔹 RIGHT JOIN
RIGHT JOIN was used to show all orders, even if they do not have a valid customer in the customers table.

Concept:
- Returns all rows from the right table (orders)
- Returns matched rows from the left table (customers)
- Displays NULL when customer data is missing

Project Usage:
- Detecting invalid customer IDs
- Finding orphan order records

---

### 🔹 JOIN with WHERE Clause (Filtering Joined Data)
The WHERE clause was used after JOIN operations to filter the results based on business conditions.

Concept:
- Filters rows after the join is performed
- Helps in applying business logic on joined datasets
- Essential for real-world data analysis queries

Project Usage:
- Filtering orders greater than a specific amount
- Filtering customers by city (e.g., Chennai)
- Finding customers with NULL matches using `WHERE ... IS NULL`

Example Logic Used:
- WHERE order_amount > 1000
- WHERE city = 'Chennai'
- WHERE customer_id IS NULL

---

### 🔹 NULL Handling in JOINs
NULL values were intentionally included in the dataset to understand how joins behave with missing and invalid data.

Concept:
- NULL indicates no matching relationship between tables
- Useful for data validation and cleaning
- Critical in real business datasets

Project Usage:
- Customers without orders (LEFT JOIN + IS NULL)
- Orders without valid customers (LEFT JOIN + IS NULL)

---

### 🔹 JOIN with Aggregation Functions
JOIN operations were combined with aggregation functions like COUNT() and SUM() for analytical insights.

Concept:
- GROUP BY with JOIN for summarized analysis
- COUNT() to calculate number of orders per customer
- SUM() to calculate total spending per customer

Project Usage:
- Total amount spent by each customer
- Number of orders placed per customer
- Highest spending customer analysis

---

###  Overall Learning Outcome
By using JOINs with WHERE clause, NULL handling, and aggregation, this project demonstrates how relational databases are analyzed in real Data Analyst workflows for data cleaning, filtering, and business insight generation.
