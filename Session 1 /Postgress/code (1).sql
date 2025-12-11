------1------
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
CREATE VIEW Employee_View AS
SELECT 
    emp_id,
    emp_name,
    department,
    salary
FROM Employee;
CREATE ROLE Analyst;
GRANT SELECT ON Employee_View TO Analyst;


------2--------

INSERT INTO Employee (emp_id, emp_name, department, salary) 
VALUES
(1, 'Tushar','Marketing', 83000),
(2, 'Yash','IT',67000),
(3, 'Bhuvan','HR',83000),
(4, 'Aryan','Content',77000),
(5, 'Sukhman','HR',89000),
(6, 'Sahil','IT',54000);

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1-1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2-1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 3-1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 4-1;
