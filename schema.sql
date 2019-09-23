CREATE TABLE IF NOT EXISTS Customers (
  customer_id char(10) NOT NULL,
  firstname varchar(32) default NULL,
  lastname varchar(32) default NULL,
  address varchar(128) default NULL,
  email varchar(128) default NULL,
  PRIMARY KEY  (customer_id),
  UNIQUE KEY (email, address)
);

INSERT INTO Customers (customer_id, firstname, lastname, address, email) VALUES
('1234567890', 'Beth', 'O''Brien', '1 Wexford St.', 'bob@gmail.ie'),
('0987654321', 'Jack', 'Dunne', NULL, NULL),
('2446688002', 'Paul', 'Thompson', '20 O''Connell St.', NULL),
('1335577991', 'Bill', 'Murphy', NULL, 'bm@gmail.ie'),
('1212121212', 'Jane', 'Murphy', '39 Thomas St.', 'jm@gmail.com');


CREATE TABLE IF NOT EXISTS Address (
  city varchar(32) default NULL,
  address varchar(128) NOT NULL,
  PRIMARY KEY (address)
);


CREATE TABLE IF NOT EXISTS Employees (
  employee_id char(10) NOT NULL,
  firstname varchar(32) default NULL,
  lastname varchar(32) default NULL,
  address varchar(128) default NULL,
  email varchar(128) default NULL,
  employee_role varchar(64) default NULL,
  employee_annual_salary double default NULL,
  PRIMARY KEY  (employee_id),
  UNIQUE KEY email (email, address)
);

INSERT INTO Employees (employee_id, firstname, lastname, address, email, employee_role, employee_annual_salary) VALUES
('3253253250', 'James', 'Jones', '29 O''Connell St.', 'JJ@bookshop.ie', 'Manager', 25000),
('7636817631', 'Mary', 'Furlong', '43 Thomas St.', 'MF@bookshop.ie', 'Sales Assistant', 20000),
('8789227642', 'Mark', 'Kenny', '28 Thomand St.', 'MK@bookshop.ie', 'Sales Assistant', 20000),
('5678322874', 'Jennifer', 'Kiely', '13 Limerick St.', 'JK@bookshop.ie', 'Online Orders Packer', 19500),
('3782831939', 'Jack', 'Russell', '2 Kilrush St.', 'JR@bookshop.ie', 'Relief Sales assistant', 5850);


CREATE TABLE IF NOT EXISTS Books (
  book_isbn char(13) NOT NULL,
  book_name varchar(128) default NULL,
  book_author varchar(64) default NULL,
  book_genre varchar(32) default NULL,
  book_price double default NULL,
  PRIMARY KEY (book_isbn)
);

INSERT INTO Books (book_isbn, book_name, book_author, book_genre, book_price) VALUES
('1234567890123', 'The Tale of the Forbidden Sword', 'Johnathan Miles', 'Action', 29.99),
('6748263673426', 'The Enchantment of The Wishing Stone', 'Megan Jones', 'Fantasy', 24.45),
('7646572645726', 'The Battle of The Tribes', 'William Shakels', 'Action', 36.79),
('6234647637462', 'Hamelton''s Story', 'Harold Sexton', 'Drama/Romance', 19.99),
('3243242342389', 'Gone To The Unknown Land', 'Samantha Duggan', 'Adventure', 33.29);


CREATE TABLE IF NOT EXISTS Stationary (
  stationary_code char(5) NOT NULL,
  name varchar(32),
  price double default NULL,
  PRIMARY KEY (stationary_code)
);

INSERT INTO Stationary (stationary_code, name, price) VALUES
('12345', 'Refill Pad', 1.99),
('13241', 'Pens', 0.79),
('64867', 'Calculator', 7.99),
('67345', 'Copybook', 1.49),
('13214', 'Pencils', 0.69),
('43433', 'Diary', 5.50);


CREATE TABLE IF NOT EXISTS Products (
  name char(48) NOT NULL default '',
  `type` varchar(10) default NULL,
  PRIMARY KEY  (name)
);

INSERT INTO Products (name, `type`) VALUES
('The Tale of the Forbidden Sword', 'Books'),
('The Enchantment of The Wishing Stone', 'Books'),
('The Battle of The Tribes', 'Books'),
('Hamelton''s Story', 'Books'),
('Gone To The Unknown Land', 'Books'),
('Refill Pad', 'Stationary'),
('Pens', 'Stationary'),
('Calculator', 'Stationary'),
('Copybook', 'Stationary'),
('Pencils', 'Stationary'),
('Diary', 'Stationary');


CREATE TABLE IF NOT EXISTS Sales (
  customer_id char(10) NOT NULL default '',
  name char(48) NOT NULL default '',
  quantity int(11) default NULL,
  `day` date NOT NULL default '1000-01-01',
  paid double default NULL,
  type_of_payment varchar(32) default NULL,
  PRIMARY KEY  (`day`),
  UNIQUE KEY (customer_id, name)
);

INSERT INTO Sales (customer_id, name, quantity, `day`, paid, type_of_payment) VALUES
('1234567890', 'Pens', 5, '2018-11-23', 3.95, 'cash'),
('1234567890', 'The Enchantment of The Wishing Stone', 1, '2018-11-20', 24.45, 'visa debit'),
('1335577991', 'Diary', 2, '2018-11-16', 11,'visa credit'),
('1212121212', 'Gone To The Unknown Land', 1, '2018-11-25', 33.29, 'cash'),
('1212121212', 'Hamelton''s Story', 1, '2018-11-26', 19.99, 'visa credit'),
('2446688002', 'Calculator', 1, '2018-11-12', 7.99, 'cash'),
('0987654321', 'The Battle of The Tribes', 1, '2018-11-29', 36.79, 'visa debit'),
('0987654321', 'Refill Pad', 3, '2018-11-28', 5.97, 'visa credit'),
('0987654321', 'Pencils', 4, '2018-11-22', 2.76, 'cash');