# sql-database-fundamentals

This repository contains a collection of SQL scripts demonstrating foundational and advanced relational database concepts using **SQLite**. The projects focus on database design, data manipulation (DML), and complex query optimization.

## 📂 Project Structure

### 1. Toy Inventory System (`01_toy_inventory_crud.sql`)
A foundational script focusing on basic Data Definition Language (DDL) and Data Manipulation Language (DML) operations.
* **Concepts Covered:** 
  * Table creation with primary keys and constraints (`AUTOINCREMENT`, `CHECK`, `DEFAULT`).
  * Basic `INSERT`, `SELECT`, `UPDATE`, and `DELETE` operations.
  * Schema modifications using `ALTER TABLE` (adding and renaming columns).
  * Data filtering with `WHERE`, `LIKE`, `BETWEEN`, and basic sorting (`ORDER BY`).

### 2. Library Management System (`02_library_system_advanced.sql`)
An advanced script simulating a multi-table library borrowing system to explore relational database queries and data analysis.
* **Concepts Covered:**
  * **Relational Design:** Managing `FOREIGN KEY` constraints and `ON DELETE CASCADE` behaviors across tables.
  * **JOIN Operations:** `INNER JOIN` queries to combine data across the members, books, and borrowing tables.
  * **Aggregations:** Using `GROUP BY` and `HAVING` with aggregate functions (`AVG`, `COUNT`, `MAX`) for data analysis.
  * **Subqueries:** Implementing nested queries with `IN` and `NOT IN` operators.
  * **Control Flow:** Utilizing `CASE WHEN` statements for conditional data categorization (e.g., flagging overdue book returns).
  * **Performance Optimization:** Creating database `INDEX` structures on specific columns to optimize search operations.

## 🚀 How to Run
1. Ensure you have [SQLite](https://www.sqlite.org/download.html) installed on your system.
2. Clone this repository:
   ```bash
   git clone https://github.com/itu-itis22-filizcan22/sql-database-fundamentals.git

Open your terminal or command prompt, navigate to the directory, and run the scripts using the SQLite CLI: 
sqlite3 database.db < 01_toy_inventory_crud.sql
sqlite3 database.db < 02_library_system_advanced.sql

🛠️ Tech Stack

Database: SQLite

Language: SQL

👨‍💻 Author

Başar Filizcan

Computer Engineering Student at Istanbul Technical University (ITU)
