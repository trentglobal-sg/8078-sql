-- SELECT * FROM <TABLE NAME>
-- The * means ALL columns
select * from employees;

-- SELECT specific columns
-- eg: SELECT <col1>,<col2>,...<coln> FROM employees;
SELECT employeeNumber, firstName, lastName, email FROM employees;

-- SELECT columns as ALIAS
-- Rename a column after selecting it from the table (alias)
SELECT employeeNumber AS "Employee Number", firstName AS "First Name", lastName AS "Last Name", email  AS "Email" FROM employees;

SELECT officeCode AS "Office Code", 
      city AS "City",
      state AS "State",
	  country as "Country"
FROM offices;

-- WHERE clause to filter out rows
-- SELECT <col> FROM <table name> WHERE <cond>
SELECT * FROM employees WHERE officeCode = 1;

-- find all customers from France
SELECT * FROM customers WHERE country="France";
-- select and rename as ailas (but all the columns have to be manually specified)
SELECT  customerName, country AS "Country" FROM customers WHERE country="France";
-- use comparison operators: find all payments which amount is at least 10K
SELECT * FROM payments WHERE amount >= 10000;


-- find by string patterns using % and LIKE
-- when using LIKE, we can use %  which are wildcards (meaning can match any sequence of characters)
SELECT * FROM employees WHERE jobTitle LIKE "%sale%";

-- find all orders where the comment mention some kind of requests
SELECT * FROM orders WHERE comments LIKE "%request%"

-- logical operators
-- AND/OR

-- find all customers which credit limit is between 20k to 100k
SELECT * FROM customers WHERE creditLimit >= 20000 AND creditLimit <= 	100000;

-- find all the orders that mention the word "request" and has been shipped.
SELECT * FROM orders WHERE comments LIKE "%request%" AND status="Shipped";

-- logical operator: OR
SELECT * FROM customers WHERE country = "USA" OR country = "France";


-- Find all sales rep from office code 1 and office code 2
SELECT * FROM employees WHERE jobTitle ="Sales Rep" AND (officeCode = 2 OR officeCode = 1);

-- Find by exact date:
select * from payments WHERE paymentDate = "2004-10-19"

-- Find all payments made in the year 2003
select * from payments WHERE paymentDate >= "2003" AND paymentDate < "2004";

-- find all shipment that are more than 14 days late
SELECT orderNumber, requiredDate - orderDate FROM orders WHERE requireddate - orderDate > 14;

-- example of date manipulation
CREATE TABLE book_loans (
  loan_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  borrower VARCHAR(100) NOT NULL,
  book_title VARCHAR(100) NOT NULL,
  borrowed_date DATETIME NOT NULL,
  due_date DATETIME NOT NULL,
  returned_date DATETIME
) ENGINE = INNODB;

INSERT INTO book_loans (borrower, book_title, borrowed_date, due_date)
 VALUE ("Tan Ah Kow", "How to make friends", NOW(), DATE_ADD(NOW(), INTERVAL 3 DAY));
 
 SELECT * FROM book_loans;

 -- YEAR, DAY and MONTH
 
SELECT orderNumber,orderDate, DAY(orderDate), MONTH(orderDate), YEAR(orderDate) from orders;