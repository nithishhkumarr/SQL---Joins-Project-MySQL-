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
INNER JOIN was used to retrieve only the records that exist in both tables (Customers and Orders).  
This join helps identify customers who have placed valid orders.

Concept:
- Returns only matching rows
- Ignores NULL and unmatched records
- Commonly used for transactional analysis

Use Case in Project:
Matching customer names with their order amounts.

---

### 🔹 LEFT JOIN
LEFT JOIN was used to display all customers, even if they have not placed any orders.  
If a customer has no order, the order columns return NULL.

Concept:
- Returns all records from the left table (Customers)
- Returns matched records from the right table (Orders)
- Shows NULL when no match is found

Use Case in Project:
- Finding customers with no orders
- Identifying inactive customers

---

### 🔹 RIGHT JOIN
RIGHT JOIN was used to show all orders, including those that do not have a valid customer ID.  
This helps in detecting data quality issues and orphan records.

Concept:
- Returns all records from the right table (Orders)
- Returns matched records from the left table (Customers)
- Shows NULL when no matching customer exists

Use Case in Project:
- Detecting orders with NULL customer_id
- Finding invalid customer references (data anomalies)

---

### 🔹 JOIN with NULL Handling
Joins were combined with `IS NULL` conditions to detect missing relationships between tables.

Concept:
- NULL indicates no match between joined tables
- Helps in data cleaning and validation
- Very common in real business datasets

Use Case in Project:
- Customers who never placed orders
- Orders without valid customers

---

### 🔹 JOIN with Aggregation (Advanced Concept)
JOIN operations were used together with aggregation functions like COUNT() and SUM() to perform analytical calculations.

Concept:
- GROUP BY + JOIN for customer-level analysis
- COUNT() for number of orders per customer
- SUM() for total spending per customer

Use Case in Project:
- Total amount spent by each customer
- Number of orders per customer
- Highest spending customer analysis

---

### 🔹 Real-World Understanding Gained
Through this project, JOINs were used not just for table linking but for:
- Business insights
- Data validation
- Handling missing and invalid records
- Customer behavior analysis

This reflects how JOIN operations are actually used in real Data Analyst workflows.
