# SCD Types - Stored Procedures in SQL Server

This repository contains stored procedure implementations for handling **Slowly Changing Dimensions (SCD)** in a Data Warehouse using **SQL Server**.

SCDs are used to manage and store historical data in dimension tables. This project demonstrates all major SCD types including Type 0, 1, 2, 3, 4, and 6.

---

## Table of Contents

- [Introduction](#introduction)
- [SCD Types Covered](#scd-types-covered)
- [Database Schema](#database-schema)
- [Stored Procedures](#stored-procedures)
- [Usage](#usage)
- [Contact](#contact)

---

## Introduction

In data warehousing, **Slowly Changing Dimensions (SCDs)** are used to track changes in dimension attributes over time. Depending on the business need, we either overwrite, preserve, or archive these changes. This project provides examples of SQL Server stored procedures to implement each SCD type.

---

## SCD Types Covered

| SCD Type | Description |
|----------|-------------|
| **Type 0** | Fixed attribute — no changes allowed. |
| **Type 1** | Overwrites old data with new data (no history). |
| **Type 2** | Preserves full history by adding new rows. |
| **Type 3** | Keeps current and previous values in columns. |
| **Type 4** | Stores history in a separate history table. |
| **Type 6** | Hybrid of Types 1, 2, and 3. |

---

## Database Schema

### Dimension Table: `DimCustomer`

```sql
CustomerID     INT PRIMARY KEY  
Name           NVARCHAR(100)  
City           NVARCHAR(100)  
PreviousCity   NVARCHAR(100)   -- (SCD Type 3, 6)  
EffectiveDate  DATETIME        -- (SCD Type 2, 6)  
ExpiryDate     DATETIME        -- (SCD Type 2, 6)  
IsCurrent      BIT             -- (SCD Type 2, 6)
🔹 History Table (For SCD Type 4): DimCustomer_History
sql
Copy
Edit
CustomerID   INT  
Name         NVARCHAR(100)  
City         NVARCHAR(100)  
ChangeDate   DATETIME
🛠️ Stored Procedures
Stored procedures are provided for:

SCD_Type0_Update

SCD_Type1_Update

SCD_Type2_Update

SCD_Type3_Update

SCD_Type4_Update

SCD_Type6_Update

Each stored procedure is parameterized and ready to be executed with CustomerID and the updated City.

▶️ Usage
1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/yourusername/scd-sql-server.git
cd scd-sql-server
2. Execute in SQL Server
Open the SQL scripts in SSMS or Azure Data Studio.

Run the CREATE TABLE scripts.

Run the stored procedures as needed:

sql
Copy
Edit
EXEC SCD_Type1_Update @CustomerID = 101, @NewCity = 'Mumbai';
EXEC SCD_Type2_Update @CustomerID = 102, @NewCity = 'Delhi';
📬 Contact
