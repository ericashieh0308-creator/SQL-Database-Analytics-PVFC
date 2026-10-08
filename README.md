# Perfect Valley Furniture Company | SQL & Database Analytics

## Database Development, Business Analysis & Optimization

This project demonstrates the development and analysis of a relational database for **Perfect Valley Furniture Company (PVFC)**.

The project covers the full database workflow—from relational data modeling and database implementation to SQL-based business analysis and database optimization. Using MySQL, the team designed the database structure, populated business tables, developed analytical queries, and evaluated techniques for improving database performance.

---

## 🎯 Project Objective

The project was designed to support PVFC's transition from a traditional file-processing environment toward a structured relational database capable of supporting both transaction processing and business analysis.

The work focused on three major areas:

1. **Database Development**
2. **SQL Business Analysis**
3. **Database Optimization**

---

## 🗄️ Database Design

The database was structured around six core business entities:

- Country
- Customer
- Order
- Order Product
- Product
- Finish

The project included:

- Logical Data Modeling
- Relational Data Modeling
- Primary and Foreign Key Design
- One-to-Many Relationships
- Many-to-Many Relationship Resolution
- Database Table Creation
- Data Loading from Staging Tables
- Data Dictionary Validation

The `Order Product` table serves as a bridge table connecting orders, products, and product finishes.

---

## 🔍 SQL Business Analysis

SQL queries were developed to translate transactional data into business insights.

### Market Demand Analysis

Multi-table joins were used to identify which countries demonstrated meaningful demand for individual products, helping identify potential key markets for further marketing investment.

### Geographic Sales Analysis

Sales were analyzed across countries and products to compare product performance across geographic markets.

### High-Value Customer Analysis

Subqueries were used to identify customers purchasing products priced above the company's average unit price.

### Customer Spending Analysis

Customer-level spending was calculated and compared with average customer spending to identify higher-value customers.

### Purchasing Behavior Analysis

Individual order values were compared with each customer's historical average order value to identify unusually large purchases.

---

## 🧠 Advanced SQL Techniques

The project demonstrates practical use of:

- Multi-Table `JOIN`
- `GROUP BY`
- `HAVING`
- Nested Subqueries
- Aggregate Functions
- `ROLLUP`
- `RANK()`
- Calculated Sales Metrics
- Data Dictionary Queries

`ROLLUP` was used to generate customer-level totals together with overall totals, while `RANK()` was used to rank product demand based on total quantities ordered.

---

## ⚙️ Database Optimization

The project also explored database performance and optimization techniques.

The database optimization work included:

- Non-Unique Indexes
- Composite Indexes
- Function-Based Indexes
- Stored Procedures
- Table Statistics
- Query Execution Plans

Execution plans were reviewed for analytical queries to evaluate how the database processed different query structures.

---

## 🛠 Tools & Technologies

- MySQL
- MySQL Workbench
- SQL
- Relational Database Design
- Data Modeling
- Query Optimization

---

## 💼 Business Value

This project demonstrates how relational database design and SQL can support business decision-making beyond basic data storage.

The analytical queries help answer questions related to:

- Geographic market demand
- Product performance
- Customer segmentation
- Customer spending behavior
- Sales performance

The optimization component also demonstrates how database structure and indexing can support more efficient analytical workflows.

---

## 👥 Project Context

**Team Project — Database Management**

This project was completed as part of a four-person team.

The project involved collaborative work across database modeling, database implementation, SQL analysis, query testing, optimization, and documentation.

---

## 💡 Skills Demonstrated

`SQL` `MySQL` `Database Design` `Data Modeling` `Business Analytics` `Multi-Table Joins` `Subqueries` `RANK` `ROLLUP` `Indexing` `Stored Procedures` `Query Optimization`

---

## 📄 Full Project Report

The full project report includes the database models, SQL queries, query outputs, indexing strategy, stored procedure, execution plans, and project conclusions.
