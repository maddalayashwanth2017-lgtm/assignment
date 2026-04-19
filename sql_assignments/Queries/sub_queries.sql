 CREATE TABLE Empss (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT
);

-- 🟢 1. Employees earning more than company average
SELECT name,salary
FROM Empss
WHERE salary > (
    SELECT AVG(salary) FROM empss
)

-- 🟢 2. Employees earning more than their manager
SELECT name,salary
FROM Empss e
WHERE salary > (
    SELECT salary FROM empss
    WHERE e.manager_id=empss.emp_id
)


-- 🟢 3. Employees earning less than highest salary
SELECT name,salary
FROM empss
WHERE salary<(
    SELECT MAX(salary)from empss
)

-- 🟢 4. Employees earning equal to lowest salary

SELECT name,salary
FROM empss
WHERE salary=(
    SELECT MIN(salary)from empss
)

-- 🟢 5. Employees earning more than HR department average

SELECT name,salary
FROM empss
WHERE salary > (
    SELECT AVG(salary) FROM empss
    WHERE department="hr"
)

-- 🔥 1. Second Highest Salary (Simple)
SELECT MAX(salary)
FROM empss
WHERE salary < (
    SELECT MAX(salary) from empss
)


SELECT name,salary
FROM empss
WHERE salary = (
    SELECT MAX(salary) 
    FROM empss
    WHERE salary<(
        SELECT MAX (salary)
        FROM empss

    )

)

-- 👉 Question:
--  Find employees who work in departments where at least one employee earns more than 60,000.
 
SELECT name,department,salary
FROM empss
WHERE salary>60000 AND department IN (
    SELECT department FROM empss
    WHERE salary > 60000
)   

-- 👉 Question:
--  Find employees whose salary is greater than any employee in HR department.

SELECT name,salary
from empss
WHERE salary > ANY  (
    SELECT salary 
    FROM empss
    WHERE department= "it"
)

-- 👉 Question:
--  Find employees whose salary is greater than all employees in Finance department.
SELECT name,salary
from empss
WHERE salary > ALL (
    SELECT salary 
    FROM empss
    WHERE department= "finanne"
)

SELECT department from empss
where department = "finanane"
    


CREATE TABLE orders (
   order_id INT PRIMARY KEY,
   customer_name VARCHAR(50),
   city VARCHAR(50),
   amount INT,
   order_status VARCHAR(20)
);

INSERT INTO orders VALUES
(1, 'Amit', 'Mumbai', 5000, 'Delivered'),
(2, 'Neha', 'Delhi', 7000, 'Pending'),
(3, 'Rahul', 'Hyderabad', 3000, 'Cancelled'),
(4, 'Sneha', 'Mumbai', 8000, 'Delivered'),
(5, 'Kiran', 'Chennai', 4500, 'Pending'),
(6, 'Vikas', 'Delhi', 6000, 'Delivered'),
(7, 'Pooja', 'Hyderabad', 7500, 'Delivered'),
(8, 'Arjun', 'Mumbai', 2000, 'Cancelled'),
(9, 'Divya', 'Chennai', 9000, 'Delivered'),
(10, 'Ravi', 'Delhi', 8500, 'Pending'),
(11, 'Meena', 'Hyderabad', 4000, 'Delivered'),
(12, 'Suresh', 'Mumbai', 9500, 'Delivered'),
(13, 'Anil', 'Chennai', 3000, 'Cancelled'),
(14, 'Kavya', 'Delhi', 7200, 'Delivered'),
(15, 'Ramesh', 'Hyderabad', 6800, 'Pending'),
(16, 'Priya', 'Mumbai', 7700, 'Delivered'),
(17, 'Manoj', 'Chennai', 5200, 'Pending'),
(18, 'Swathi', 'Delhi', 6100, 'Delivered'),
(19, 'Nikhil', 'Hyderabad', 8300, 'Delivered'),
(20, 'Deepika', 'Mumbai', 4200, 'Pending');


-- Find orders with amount greater than average order amount

SELECT *
FROM orders
WHERE amount > (
    SELECT AVG(amount) FROM orders
)

-- Find order(s) with maximum amount

SELECT *
FROM orders
WHERE amount = (
    SELECT MIN(amount) FROM orders
)

-- Find orders with amount less than minimum amount in Delhi

SELECT *
FROM orders
WHERE amount < (
    SELECT  MIN(amount)FROM orders
    GROUP BY order_id,city
    having city = 'delhi'
)

SELECT *
FROM orders
WHERE amount < (
    SELECT MIN(amount) FROM orders
    WHERE  city = 'delhi'
)


-- Find orders with amount equal to amount of 'Amit'

SELECT *
FROM orders
WHERE amount = (
    SELECT amount FROM orders
    WHERE  customer_name = 'amint'
)

-- Find orders with amount greater than average amount of Mumbai
SELECT *
FROM orders
WHERE amount > (
    SELECT AVG(amount) FROM orders
    WHERE  city = 'munbai'
)

-- Find orders where amount matches any amount from Mumbai
SELECT *
FROM orders
WHERE amount = ANY(
    SELECT amount FROM orders
    WHERE  city = 'munbai'
)

-- Find orders where amount is greater than all amounts from Chennai

SELECT *
FROM orders
WHERE amount > ALL(
    SELECT amount FROM orders
    WHERE  city = 'Chennai'
)

-- Find customers who placed orders in cities where amount > 8000 exists
SELECT *
FROM orders
WHERE order_id in (
    SELECT order_id
    FROM orders
    WHERE amount>8000
)

-- Find orders whose amount is less than any amount from Delhi
SELECT *
FROM orders
WHERE amount < ANY(
    SELECT amount FROM orders
    WHERE  city = 'Delhi'
)


-- Find orders from cities where any order is cancelled
SELECT *
FROM orders
WHERE order_id IN(
    SELECT order_id
    FROM orders
    WHERE order_status = 'cancelled'
)



-- Find second highest order amount
SELECT *
FROM orders
WHERE amount = (
    SELECT MAX(amount)
    FROM orders
    WHERE amount < (
        SELECT MAX(amount)
        FROM orders
        
    )
)

-- Find city with highest average order amount
