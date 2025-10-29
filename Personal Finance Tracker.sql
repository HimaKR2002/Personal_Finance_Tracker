CREATE DATABASE Personal_Finance_Tracker;
USE Personal_Finance_Tracker;


-- USERS TABLE
CREATE TABLE Users (
  UserID INT PRIMARY KEY,
  UserName VARCHAR(100),
  Email VARCHAR(150) UNIQUE,
  CreatedAt DATE
);

INSERT INTO Users (UserID, UserName, Email, CreatedAt)
VALUES
  (1, 'John Doe', 'john.doe@example.com', '2023-01-01'),
  (2, 'Jane Smith', 'jane.smith@example.com', '2023-01-05'),
  (3, 'Michael Brown', 'michael.brown@example.com', '2023-02-10'),
  (4, 'Emily Davis', 'emily.davis@example.com', '2023-02-15'),
  (5, 'Daniel Wilson', 'daniel.wilson@example.com', '2023-03-01'),
  (6, 'Sophia Miller', 'sophia.miller@example.com', '2023-03-05'),
  (7, 'James Taylor', 'james.taylor@example.com', '2023-04-01'),
  (8, 'Olivia Johnson', 'olivia.johnson@example.com', '2023-04-10'),
  (9, 'Liam Martinez', 'liam.martinez@example.com', '2023-05-01'),
  (10, 'Ava Anderson', 'ava.anderson@example.com', '2023-05-10'),
  (11, 'Noah Thomas', 'noah.thomas@example.com', '2023-06-01'),
  (12, 'Isabella Moore', 'isabella.moore@example.com', '2023-06-05'),
  (13, 'Elijah Martin', 'elijah.martin@example.com', '2023-07-01'),
  (14, 'Charlotte White', 'charlotte.white@example.com', '2023-07-10'),
  (15, 'William Lee', 'william.lee@example.com', '2023-08-01'),
  (16, 'Mia Harris', 'mia.harris@example.com', '2023-08-05'),
  (17, 'Lucas Clark', 'lucas.clark@example.com', '2023-09-01'),
  (18, 'Amelia Rodriguez', 'amelia.rodriguez@example.com', '2023-09-10'),
  (19, 'Henry Lewis', 'henry.lewis@example.com', '2023-10-01'),
  (20, 'Evelyn Walker', 'evelyn.walker@example.com', '2023-10-05'),
  (21, 'Benjamin Hall', 'benjamin.hall@example.com', '2023-10-10'),
  (22, 'Harper Allen', 'harper.allen@example.com', '2023-10-15'),
  (23, 'Jack Young', 'jack.young@example.com', '2023-10-20'),
  (24, 'Ella Hernandez', 'ella.hernandez@example.com', '2023-10-22'),
  (25, 'Sebastian King', 'sebastian.king@example.com', '2023-10-25');



-- CATEGORIES TABLE
CREATE TABLE Categories (
  CategoryID INT PRIMARY KEY,
  CategoryName VARCHAR(100),
  CategoryType ENUM('Income', 'Expense')
);

INSERT INTO Categories (CategoryID, CategoryName, CategoryType)
VALUES
  (1, 'Salary', 'Income'),
  (2, 'Freelancing', 'Income'),
  (3, 'Investments', 'Income'),
  (4, 'Gift', 'Income'),
  (5, 'Bonus', 'Income'),
  (6, 'Rent', 'Expense'),
  (7, 'Groceries', 'Expense'),
  (8, 'Utilities', 'Expense'),
  (9, 'Transportation', 'Expense'),
  (10, 'Entertainment', 'Expense'),
  (11, 'Healthcare', 'Expense'),
  (12, 'Insurance', 'Expense'),
  (13, 'Dining Out', 'Expense'),
  (14, 'Education', 'Expense'),
  (15, 'Travel', 'Expense');



-- INCOME TABLE
CREATE TABLE Income (
  IncomeID INT PRIMARY KEY,
  UserID INT,
  CategoryID INT,
  IncomeDate DATE,
  Amount DECIMAL(10, 2),
  Description VARCHAR(255),
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Income (IncomeID, UserID, CategoryID, IncomeDate, Amount, Description)
VALUES
  (1, 1, 1, '2023-01-10', 5000.00, 'Monthly Salary'),
  (2, 2, 2, '2023-01-15', 1200.00, 'Freelance Project'),
  (3, 3, 1, '2023-02-01', 4800.00, 'Monthly Salary'),
  (4, 4, 3, '2023-02-12', 600.00, 'Stock Dividends'),
  (5, 5, 1, '2023-03-01', 5500.00, 'Monthly Salary'),
  (6, 6, 4, '2023-03-05', 200.00, 'Gift from Friend'),
  (7, 7, 2, '2023-04-01', 800.00, 'Freelance Web Design'),
  (8, 8, 1, '2023-04-05', 5200.00, 'Monthly Salary'),
  (9, 9, 3, '2023-05-10', 300.00, 'Investment Return'),
  (10, 10, 1, '2023-05-12', 4900.00, 'Monthly Salary'),
  (11, 11, 5, '2023-06-01', 750.00, 'Performance Bonus'),
  (12, 12, 1, '2023-06-03', 5100.00, 'Monthly Salary'),
  (13, 13, 2, '2023-07-10', 900.00, 'Freelance Content Writing'),
  (14, 14, 1, '2023-07-12', 5300.00, 'Monthly Salary'),
  (15, 15, 3, '2023-08-01', 400.00, 'Mutual Fund Returns'),
  (16, 16, 1, '2023-08-05', 5200.00, 'Monthly Salary'),
  (17, 17, 4, '2023-09-02', 150.00, 'Birthday Gift'),
  (18, 18, 1, '2023-09-05', 4900.00, 'Monthly Salary'),
  (19, 19, 2, '2023-10-01', 1000.00, 'Freelance App Testing'),
  (20, 20, 1, '2023-10-05', 5000.00, 'Monthly Salary'),
  (21, 21, 3, '2023-10-08', 350.00, 'Stock Dividends'),
  (22, 22, 1, '2023-10-10', 4800.00, 'Monthly Salary'),
  (23, 23, 2, '2023-10-12', 850.00, 'Freelance UI Design'),
  (24, 24, 1, '2023-10-15', 5100.00, 'Monthly Salary'),
  (25, 25, 4, '2023-10-20', 100.00, 'Gift Received');



-- EXPENSES TABLE
CREATE TABLE Expenses (
  ExpenseID INT PRIMARY KEY,
  UserID INT,
  CategoryID INT,
  ExpenseDate DATE,
  Amount DECIMAL(10, 2),
  Description VARCHAR(255),
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Expenses (ExpenseID, UserID, CategoryID, ExpenseDate, Amount, Description)
VALUES
  (1, 1, 7, '2023-01-12', 150.00, 'Groceries'),
  (2, 2, 8, '2023-01-20', 120.00, 'Electric Bill'),
  (3, 3, 6, '2023-02-01', 800.00, 'House Rent'),
  (4, 4, 10, '2023-02-14', 60.00, 'Movie Outing'),
  (5, 5, 7, '2023-03-05', 130.00, 'Supermarket'),
  (6, 6, 11, '2023-03-10', 90.00, 'Doctor Visit'),
  (7, 7, 9, '2023-04-03', 45.00, 'Bus Fare'),
  (8, 8, 13, '2023-04-07', 70.00, 'Dinner at Cafe'),
  (9, 9, 14, '2023-05-01', 200.00, 'Online Course'),
  (10, 10, 15, '2023-05-10', 500.00, 'Weekend Trip'),
  (11, 11, 12, '2023-06-02', 300.00, 'Car Insurance'),
  (12, 12, 7, '2023-06-05', 140.00, 'Groceries'),
  (13, 13, 6, '2023-07-01', 850.00, 'Monthly Rent'),
  (14, 14, 8, '2023-07-05', 115.00, 'Internet Bill'),
  (15, 15, 10, '2023-08-02', 90.00, 'Netflix Subscription'),
  (16, 16, 9, '2023-08-06', 35.00, 'Fuel'),
  (17, 17, 7, '2023-09-03', 125.00, 'Grocery Shopping'),
  (18, 18, 13, '2023-09-05', 80.00, 'Restaurant'),
  (19, 19, 8, '2023-10-01', 110.00, 'Water Bill'),
  (20, 20, 15, '2023-10-03', 600.00, 'Family Vacation'),
  (21, 21, 11, '2023-10-05', 95.00, 'Medical Checkup'),
  (22, 22, 9, '2023-10-08', 40.00, 'Taxi Ride'),
  (23, 23, 10, '2023-10-10', 120.00, 'Concert Ticket'),
  (24, 24, 14, '2023-10-12', 150.00, 'Online Workshop'),
  (25, 25, 6, '2023-10-15', 750.00, 'Apartment Rent');
  

-- 1. List all users along with their income details
-- 2. List all users along with their expenses
-- 3. Calculate total income and total expenses per user
-- 4. Show each user’s current balance (Income - Expenses)
-- 5. Monthly income summary for all users
-- 6. Monthly expense summary per user
-- 7. Category-wise spending for each user
-- 8. Compare Income and Expense per Category
-- 9. Show users who spent more than they earned
-- 10. Latest transaction (income or expense) per user


-- 1. List all users along with their income details
CREATE VIEW User_Income_Details AS
SELECT 
  U.UserName,
  I.IncomeDate,
  C.CategoryName AS IncomeType,
  I.Amount
FROM Users U
JOIN Income I ON U.UserID = I.UserID
JOIN Categories C ON I.CategoryID = C.CategoryID
ORDER BY I.IncomeDate;


-- 2. List all users along with their expenses
CREATE VIEW User_Expense_Details AS
SELECT 
  U.UserName,
  E.ExpenseDate,
  C.CategoryName AS ExpenseType,
  E.Amount
FROM Users U
JOIN Expenses E ON U.UserID = E.UserID
JOIN Categories C ON E.CategoryID = C.CategoryID
ORDER BY E.ExpenseDate;


-- 3. Calculate total income and total expenses per user
CREATE VIEW User_Total_Income_Expense AS
SELECT 
  U.UserName,
  COALESCE(SUM(I.Amount), 0) AS TotalIncome,
  COALESCE(SUM(E.Amount), 0) AS TotalExpenses
FROM Users U
LEFT JOIN Income I ON U.UserID = I.UserID
LEFT JOIN Expenses E ON U.UserID = E.UserID
GROUP BY U.UserName;


-- 4. Show each user’s current balance (Income - Expenses)
CREATE VIEW User_Current_Balance AS
SELECT 
  U.UserName,
  COALESCE(SUM(I.Amount), 0) - COALESCE(SUM(E.Amount), 0) AS CurrentBalance
FROM Users U
LEFT JOIN Income I ON U.UserID = I.UserID
LEFT JOIN Expenses E ON U.UserID = E.UserID
GROUP BY U.UserName
ORDER BY CurrentBalance DESC;


-- 5. Monthly income summary for all users
CREATE VIEW Monthly_Income_Summary AS
SELECT 
  DATE_FORMAT(I.IncomeDate, '%Y-%m') AS Month,
  SUM(I.Amount) AS TotalIncome
FROM Income I
GROUP BY DATE_FORMAT(I.IncomeDate, '%Y-%m')
ORDER BY Month;


-- 6. Monthly expense summary per user
CREATE VIEW Monthly_Expense_Summary AS
SELECT 
  U.UserName,
  DATE_FORMAT(E.ExpenseDate, '%Y-%m') AS Month,
  SUM(E.Amount) AS TotalExpense
FROM Users U
JOIN Expenses E ON U.UserID = E.UserID
GROUP BY U.UserName, DATE_FORMAT(E.ExpenseDate, '%Y-%m')
ORDER BY Month;


-- 7. Category-wise spending for each user
CREATE VIEW Categorywise_Spending AS
SELECT 
  U.UserName,
  C.CategoryName AS ExpenseCategory,
  SUM(E.Amount) AS TotalSpent
FROM Users U
JOIN Expenses E ON U.UserID = E.UserID
JOIN Categories C ON E.CategoryID = C.CategoryID
WHERE C.CategoryType = 'Expense'
GROUP BY U.UserName, C.CategoryName
ORDER BY U.UserName;


-- 8. Compare Income and Expense per Category
CREATE VIEW Category_Income_Expense_Comparison AS
SELECT 
  C.CategoryName,
  C.CategoryType,
  SUM(CASE WHEN C.CategoryType = 'Income' THEN I.Amount ELSE 0 END) AS TotalIncome,
  SUM(CASE WHEN C.CategoryType = 'Expense' THEN E.Amount ELSE 0 END) AS TotalExpense
FROM Categories C
LEFT JOIN Income I ON C.CategoryID = I.CategoryID
LEFT JOIN Expenses E ON C.CategoryID = E.CategoryID
GROUP BY C.CategoryName, C.CategoryType
ORDER BY C.CategoryType, C.CategoryName;


-- 9. Show users who spent more than they earned
CREATE VIEW Overspending_Users AS
SELECT 
  U.UserName,
  COALESCE(SUM(I.Amount), 0) AS TotalIncome,
  COALESCE(SUM(E.Amount), 0) AS TotalExpenses,
  (COALESCE(SUM(I.Amount), 0) - COALESCE(SUM(E.Amount), 0)) AS Balance
FROM Users U
LEFT JOIN Income I ON U.UserID = I.UserID
LEFT JOIN Expenses E ON U.UserID = E.UserID
GROUP BY U.UserName
HAVING Balance < 0;


-- 10. Latest transaction (income or expense) per user
CREATE VIEW User_Last_Transaction AS
SELECT 
  U.UserName,
  MAX(GREATEST(
      IFNULL(I.IncomeDate, '0000-00-00'),
      IFNULL(E.ExpenseDate, '0000-00-00')
  )) AS LastTransactionDate
FROM Users U
LEFT JOIN Income I ON U.UserID = I.UserID
LEFT JOIN Expenses E ON U.UserID = E.UserID
GROUP BY U.UserName
ORDER BY LastTransactionDate DESC;