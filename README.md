# 📘 SQL Learning Repository ![icons8-mysql-logo-48](https://github.com/swaapnaa/SQL-PROJECTS/assets/149737403/95180ab6-019c-4ba1-9165-e9449cb95614)

Welcome to the **SQL Learning Repository** 🚀  
This repository is created to help you learn **SQL (Structured Query Language)** in a **simple, practical, and easy-to-understand way**.

SQL is one of the most important skills for **developers, and students**.  
This repository explains **core SQL concepts with examples**, focusing on clarity and real-world usage.

---

## 🧠 What is SQL?

SQL (Structured Query Language) is used to:
- Store data
- Retrieve data
- Update data
- Delete data
- Manage databases efficiently

SQL works with **relational databases** such as MySQL, PostgreSQL, Oracle, SQL Server, and SQLite.

---

## 🔑 Important SQL Concepts Explained

### 1️⃣ CRUD Operations

CRUD represents the four basic operations performed on a database:

- **CREATE** → Insert new data  
- **READ** → Retrieve data  
- **UPDATE** → Modify existing data  
- **DELETE** → Remove data  

## 📊 Overview of SQL Categories

SQL commands are divided into functional groups to manage everything from data structure to security.

| Category | Full Name | Purpose | Key Commands |
| :--- | :--- | :--- | :--- |
| **DDL** | Data Definition Language | Defines database structure | `CREATE`, `ALTER`, `DROP` |
| **DML** | Data Manipulation Language | Manages data within tables | `INSERT`, `UPDATE`, `DELETE` |
| **DQL** | Data Query Language | Retrieves data | `SELECT` |
| **DCL** | Data Control Language | Manages permissions | `GRANT`, `REVOKE` |
| **TCL** | Transaction Control Language | Manages transactions | `COMMIT`, `ROLLBACK` |

# SQL Joins: The Complete Reference 🔗

This repository serves as a comprehensive guide to understanding how to combine data from multiple tables using **SQL Joins**.

---

## 🔍 What is a Join?
In a relational database, data is often spread across multiple tables. A **JOIN** clause is used to combine rows from two or more tables, based on a related column between them (usually Primary and Foreign Keys).

---

## 🛠 The Join Types (With Examples)

Assume we have two tables: 
- `Customers` (CustomerID, Name)
- `Orders` (OrderID, CustomerID, OrderDate)

### 1. INNER JOIN
The most common join. It returns only the records that have **matching values in both tables**.
```sql
SELECT Customers.Name, Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
```

### 2. LEFT JOIN (or LEFT OUTER JOIN)
Returns all records from the left table, and the matched records from the right table. If there is no match, the result is NULL on the right side.
```sql
SELECT Customers.Name, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
```

### 3. RIGHT JOIN (or RIGHT OUTER JOIN)
Returns all records from the right table, and the matched records from the left table. If there is no match, the result is NULL on the left side.
```sql
SELECT Orders.OrderID, Customers.Name
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
```

### 4. FULL JOIN (or FULL OUTER JOIN)
Returns all records when there is a match in either table. It essentially combines the results of both Left and Right joins.
```sql
SELECT Customers.Name, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
```

### 5. SELF JOIN
A regular join, but the table is joined with itself. This is useful for hierarchical data (like an Employees table where one column is ManagerID).
```sql
SELECT A.EmployeeName AS Employee, B.EmployeeName AS Manager
FROM Employees A, Employees B
WHERE A.ManagerID = B.EmployeeID;
```

### 6. CROSS JOIN
Returns the Cartesian product of the two tables. It joins every row of the first table with every row of the second table.
```sql
SELECT Customers.Name, Products.ProductName
FROM Customers
CROSS JOIN Products;
```

### 7. NATURAL JOIN
If same column name present then behave as inner join otherwise behave as outer join
```sql
SELECT Customers.Name, Products.ProductName
FROM Customers
NATURAL JOIN Products;
```

## 🔍 What is a Sub query?
Sub query is a query within another query and it is also called inner query.

---
