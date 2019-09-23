DELIMITER $$
CREATE PROCEDURE GetTotalSalary (in employee_total_salary double)
    BEGIN
        SELECT sum(employee_salary) 
        INTO employee_total_salary
        FROM employees;
END


DELIMITER $$
CREATE TRIGGER OnDeleteEmployeeSalary
AFTER DELETE ON employees
FOR EACH ROW
    BEGIN
        CALL GetTotalSalary();
END;
$$


DELIMITER //
CREATE FUNCTION AmountOfProductsThatCustomersOrdered ()
RETURNS INTEGER

  BEGIN
    DECLARE NumberOfProductsBought INTEGER;
    SET NumberOfProductsBought = 0;
    SELECT COUNT(*) INTO NumberOfProductsBought
    FROM products
    WHERE type LIKE 'Books';
    
    RETURN NumberOfProductsBought;
  END;
  //


DELIMITER //
CREATE TRIGGER NumberOfProductsThatWereBought  
AFTER INSERT ON sales
FOR EACH ROW
	BEGIN 
	CALL AmountOfProductsThatCustomersOrdered;
	
END;
//