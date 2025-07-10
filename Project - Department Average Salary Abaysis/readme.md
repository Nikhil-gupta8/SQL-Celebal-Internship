Departmental Average Salary Analysis with Threshold

## Objective
Analyze employee salary data to identify departments where the average salary exceeds the overall average salary.

## Tools Used
- SQL Server Management Studio (SSMS)
- T-SQL

## Database Schema

### Departments Table
- DepartmentID (INT, Primary Key)
- Name (VARCHAR)

### Employees Table
- EmployeeID (INT, Primary Key)
- Name (VARCHAR)
- DepartmentID (Foreign Key)
- Salary (DECIMAL)

## Sample Query Logic

```sql
WITH OverallAvg AS (
    SELECT AVG(Salary) AS OverallAverage FROM Employees
),
DeptStats AS (
    SELECT 
        e.DepartmentID,
        d.Name AS DepartmentName,
        AVG(e.Salary) AS AverageSalary,
        COUNT(*) AS NumberOfEmployees
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    GROUP BY e.DepartmentID, d.Name
)
SELECT 
    DepartmentName,
    AverageSalary,
    NumberOfEmployees
FROM DeptStats
CROSS JOIN OverallAvg
WHERE AverageSalary > OverallAverage;
```

## Sample Output

| DepartmentName | AverageSalary | NumberOfEmployees |
|----------------|----------------|--------------------|
| Development    | 100000.00      | 3                  |

## Files Included

- `schema.sql`: Database schema definition
- `insert_data.sql`: Sample data for Employees and Departments
- `analysis_query.sql`: Final SQL analysis query
- `Departmental_Salary_Analysis_Report.docx`: Project report
