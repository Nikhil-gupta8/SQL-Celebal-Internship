# SQL Solutions for Assignment - Level B Task

## Project Overview

This project involves database development tasks as part of my internship at **Celebal Technology**. The focus is on creating and managing SQL Server database objects including:

- Stored Procedures  
- Functions  
- Views  
- Triggers  

---

## Task Requirements

### Stored Procedures
- Implement procedures for:
  - Inserting order details
  - Updating order details
  - Retrieving order details
  - Deleting order details

###  Functions
- Develop user-defined functions to perform:
  - Date formatting operations using specified formats

###  Views
- Create views to:
  - Present comprehensive customer order information
  - Display product details

###  Triggers
- Implement triggers to:
  - Manage order detail deletion
  - Perform inventory checks before insertion

---

## Task Resources

### Step-by-Step Guide to Install AdventureWorks Database

####  Download AdventureWorks Database

1. Visit the [Microsoft SQL Server Samples GitHub Repository](https://github.com/Microsoft/sql-server-samples).
2. Navigate to: `samples/databases/adventure-works`.
3. Download the **AdventureWorks2019.bak** file (OLTP version).  
   Direct link: [AdventureWorks2019.bak](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)

####  Restore the Database

1. Open **SQL Server Management Studio (SSMS)**.
2. Connect to your SQL Server instance.
3. Right-click on the `Databases` node → `Restore Database...`
4. Select the downloaded `.bak` file and restore it as `AdventureWorks2019`.
5. Ensure that this restored database is used for all your SQL tasks.


