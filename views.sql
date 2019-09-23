CREATE VIEW Price_Book_SciFi AS
	SELECT book_name, book_price
	FROM Books
	WHERE book_name IN (SELECT book_name
						FROM Books
						WHERE book_genre = 'Science Fiction');
						


						
CREATE VIEW Sales_Limerick AS
	SELECT customer_id, paid
	FROM Sales
	WHERE customer_id IN (SELECT customer_id
						 FROM Customers
						 WHERE address IN (SELECT address
											FROM address
											WHERE city = 'Limerick'));
						 
						 
						 
CREATE VIEW Employees_High_Salary AS
	SELECT firstname, lastname, employee_annual_salary
	FROM Employees
	WHERE employee_annual_salary IN (SELECT employee_annual_salary
									FROM Employees
									WHERE employee_annual_salary > 7500.00);