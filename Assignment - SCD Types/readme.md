# SCD Types - SQL Server Stored Procedures

This project demonstrates the implementation of all major Slowly Changing Dimension (SCD) types using Microsoft SQL Server.

## SCD Types Covered
- **SCD Type 0** – No changes allowed (Read-only)
- **SCD Type 1** – Overwrite old data (No history)
- **SCD Type 2** – Add new row for each change (Keeps history)
- **SCD Type 3** – Store previous value in another column
- **SCD Type 4** – Keep change history in a separate table
- **SCD Type 6** – Hybrid of Types 1, 2, and 3

## Table Structure

- `DimCustomer` (Main dimension table)
- `DimCustomer_History` (For SCD Type 4)

## Files Included

- `SCD_Types_SQLServer.sql`: Contains all table definitions, sample data, and stored procedures for each SCD type.

## How to Run

1. Create a database named `SCD` in SQL Server Management Studio (SSMS).
2. Run the SQL script from this repo in the `SCD` database.
3. Use the procedures to test each SCD type (0 to 6).

## Author
- **Name**: Your Name
- **Tools Used**: Microsoft SQL Server Management Studio (SSMS)
