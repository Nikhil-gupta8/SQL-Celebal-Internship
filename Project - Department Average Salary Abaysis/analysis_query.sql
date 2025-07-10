
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
