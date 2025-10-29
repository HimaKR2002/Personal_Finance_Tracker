## Project Overview

The main goal of this project is to:
- Store users' income and expense records  
- Categorize transactions (Income or Expense)  
- Generate reports like monthly income, expenses, and balance  
- Identify users who spend more than they earn  

---

## Database Structure

**Database Name:** `Personal_Finance_Tracker`

# Tables Used
1. **Users** – stores user information  
2. **Categories** – stores income/expense categories  
3. **Income** – records income details  
4. **Expenses** – records expense details  

---

## Table Details

# Users
| Column | Description |
|---------|--------------|
| UserID | Primary key |
| UserName | User’s name |
| Email | User’s email address |
| CreatedAt | Account creation date |

# Categories
| Column | Description |
|---------|--------------|
| CategoryID | Primary key |
| CategoryName | Category name (e.g. Rent, Salary) |
| CategoryType | Income or Expense |

# Income
| Column | Description |
|---------|--------------|
| IncomeID | Primary key |
| UserID | Linked to Users |
| CategoryID | Linked to Categories |
| IncomeDate | Date of income |
| Amount | Income amount |
| Description | Description of income |

# Expenses
| Column | Description |
|---------|--------------|
| ExpenseID | Primary key |
| UserID | Linked to Users |
| CategoryID | Linked to Categories |
| ExpenseDate | Date of expense |
| Amount | Expense amount |
| Description | Description of expense |

---

## Created Views

| View Name | Purpose |
|------------|----------|
| User_Income_Details | Shows income transactions |
| User_Expense_Details | Shows expense transactions |
| User_Total_Income_Expense | Total income and expense per user |
| User_Current_Balance | User’s remaining balance (Income - Expense) |
| Monthly_Income_Summary | Monthly total income |
| Monthly_Expense_Summary | Monthly total expenses |
| Categorywise_Spending | Category-wise expense |
| Overspending_Users | Users whose expenses exceed income |
| User_Last_Transaction | Last transaction date of user |
