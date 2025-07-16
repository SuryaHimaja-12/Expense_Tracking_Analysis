create database expense_tracker;

use expense_tracker;

show tables;

select * from expenses;

ALTER TABLE expenses
RENAME COLUMN ï»¿ID TO ID;

SET SQL_SAFE_UPDATES = 0;


UPDATE expenses
SET date = STR_TO_DATE(date, '%d-%m-%Y');


UPDATE expenses
SET due_date = NULL
WHERE due_date = 'None';

ALTER TABLE expenses
MODIFY due_date DATE;



SELECT DISTINCT type FROM expenses;

UPDATE expenses
SET type = 'EXPENSE'
WHERE type NOT IN ('INCOME', 'EXPENSE');

ALTER TABLE expenses
MODIFY type ENUM('INCOME', 'EXPENSE');




ALTER TABLE expenses
MODIFY ID INT AUTO_INCREMENT PRIMARY KEY,
MODIFY date DATE,
MODIFY title VARCHAR(100),
MODIFY category VARCHAR(100),
MODIFY account VARCHAR(100),
MODIFY amount DECIMAL(10,2),
MODIFY currency VARCHAR(10),
MODIFY type ENUM('INCOME', 'EXPENSE'),
MODIFY transfer_amount DECIMAL(10,2),
MODIFY transfer_currency VARCHAR(10),
MODIFY to_account VARCHAR(100),
MODIFY receive_amount DECIMAL(10,2),
MODIFY receive_currency VARCHAR(10),
MODIFY description VARCHAR(255),
MODIFY due_date DATE;

select * from expenses;




