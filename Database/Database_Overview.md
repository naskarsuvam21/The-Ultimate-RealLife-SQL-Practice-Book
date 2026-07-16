# 🛒 E-commerce Database Overview

Welcome to the documentation for **The Ultimate Real-Life SQL Practice Book** database. This document provides an overview of the database architecture, schema modifications, and dataset structures used in this project.

---

## 💻 Tech Stack & Environment
* **Database Management System:** MySQL 8.0+
* **Database Name:** `ecommerce`
* **Purpose:** Real-world data analytics, SQL practicing, data cleaning, and retrieval manipulation.

---

## 📊 Dataset Schema & Architecture

The project tracks core operations of an e-commerce platform through the following **8 interconnected data components (.csv files)**:

1. **`customers`**: Demographics and profile data of registered buyers.
2. **`employees`**: Internal staff records handling administrative tasks.
3. **`suppliers`**: Vendors providing warehouse inventory.
4. **`products`**: Catalogue of items available for sale.
5. **`inventory`**: Real-time stock counts and warehouse mappings.
6. **`orders`**: Transaction entries linking customers to their purchases.
7. **`payments`**: Payment processing statuses and methods.
8. **`reviews`**: Customer feedback, ratings, and opinions.

---

## 🛠️ Data Cleaning & Schema Modifications (DDL/DML Tasks)

To ensure the database adheres to modern normalization techniques and proper data types, severe optimization and cleaning routines are executed on the raw import files:

### Key Tasks Performed:
* **Primary Key Optimization:** Adjusted `customerID` to act as an `AUTO_INCREMENT` Primary Key with explicit constraints.
* **String Constraints:** Standardized names (`firstName`, `lastName`) with tight validation limits (`VARCHAR(150)`).
* **Date Parsing & Formatting:**
  * Converted raw text-based `birthDate` strings (`%m/%d/%Y`) into proper standardized MySQL `DATE` records stored under the `dob` column.
  * Transformed messy, nullable anniversary strings into standard `DATE` format handling missing entries safely.
* **Safe Mode Controls:** Managed temporary safe-update properties (`SET SQL_SAFE_UPDATES = 0;`) to safely execute batch queries without breaking environment safety gates.

---

## 🚀 Future Roadmap & Intentions
* Setting up relational integrity models using Foreign Keys (FK).
* Documenting exploratory complex Analytical Queries (`JOINs`, `GROUP BY`, `Window Functions`).
* Creating staging performance optimization metrics (Indexing).

---
*Documented with passion by Suvam Naskar.*
