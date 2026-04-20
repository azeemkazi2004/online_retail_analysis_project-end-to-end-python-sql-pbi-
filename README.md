# online_retail_analysis_project-end-to-end-python-sql-pbi-
End-to-end data analysis project using Python, SQL, and Power BI to analyze customer behavior, product performance, and operational costs
# 🛒 Online Retail Data Analysis & Dashboard

## 📌 Project Overview

This project analyzes an online retail dataset to understand customer behavior, product performance, revenue distribution, and operational costs.
The analysis was carried out using Python for data cleaning, SQL for querying, and Power BI for building an interactive dashboard.

---

## 🎯 Objectives

* Analyze overall revenue, orders, and customer metrics
* Identify contribution of top customers
* Evaluate top-performing products
* Understand revenue distribution across countries
* Measure the impact of operational expenses (postage, carriage, etc.)

---

## 🛠️ Tools Used

* **Python (Pandas)** – Data cleaning and feature engineering
* **SQL** – Data analysis and aggregation
* **Power BI** – Dashboard creation and visualization

---

## 🔄 Project Workflow

### 1. Data Cleaning & Feature Engineering (Python)

* Removed null values and invalid records
* Handled negative quantities and returns
* Cleaned and standardized columns

#### Feature Engineering:

* Created **Revenue column** (Quantity × Price)
* Extracted **Year, Month, and YearMonth** from InvoiceDate
* Created fields for time-based analysis
* Prepared data for aggregation and dashboard usage

### 2. Data Analysis (SQL)

Performed detailed analysis using SQL to generate business metrics and insights:

#### 📊 Core Metrics

* Total Revenue (including non-product entries)
* Product Revenue (excluding non-product entries)
* Total Orders
* Total Customers
* Average Order Value (AOV)

#### 👥 Customer Analysis

* Identified customer types (One-time vs Repeat customers)
* Calculated Top 10 customers by revenue
* Measured customer contribution to total revenue

#### 📦 Product Analysis

* Identified top-performing products by revenue
* Measured product contribution to total revenue

#### 🌍 Geographic Analysis

* Revenue by country
* Contribution of each country to total revenue
* AOV by country

#### 📈 Time-Based Analysis

* AOV by Year-Month
* Revenue trends over time

#### 💸 Expense Analysis

* Identified non-product transactions (Postage, Carriage, Manual entries, etc.)
* Calculated total expenses
* Measured expense contribution relative to total revenue


### 3. Data Modeling & Dashboard (Power BI)

Built an interactive dashboard with:

#### 🔹 KPI Metrics

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value (AOV)

#### 🔹 Customer Analysis

* One-time vs Repeat customers
* Top 10 customer revenue
* Top 10 customer contribution (%)

#### 🔹 Product Analysis

* Top products by revenue
* Top 10 product contribution (using DAX)

#### 🔹 Geographic Analysis

* Revenue by country
* Country contribution to total revenue

#### 🔹 Expense Analysis

* Identified non-product entries:

  * POSTAGE
  * DOTCOM POSTAGE
  * CARRIAGE
  * MANUAL
* Created DAX measures to calculate:

  * Total Expenses
  * Expenses % of revenue

---

## 📊 Key Insights

* **Customer Distribution:**
  Top 10 customers contribute ~16% of total revenue, indicating a well-distributed customer base with some dependency on high-value customers.

* **Revenue Concentration:**
  Revenue is not heavily concentrated among a small group of customers.

* **Geographic Insight:**
  The United Kingdom contributes the majority of total revenue compared to other countries.

* **Product Performance:**
  Revenue is spread across multiple products rather than being dominated by a few.

* **Operational Costs:**
  Expenses such as postage and carriage account for ~1.7% of total revenue, indicating minimal operational impact.

---

## 📷 Dashboard Preview

### Page 1 – Overview

![Dashboard Page 1](images/dashboard_page1.png)

### Page 2 – Insights

![Dashboard Page 2](images/dashboard_page2.png)

---

## 📁 Project Structure

```
online-retail-analysis/
│
├── data/
│   └── cleaned_retail.csv
│
├── python/
│   └── data_cleaning.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── powerbi/
│   └── online_retail_dashboard.pbix
│
├── images/
│   ├── dashboard_page1.png
│   └── dashboard_page2.png
│
└── README.md
```

---

## 🚀 Conclusion

This project demonstrates how raw transactional data can be transformed into meaningful business insights using a structured workflow.
It highlights customer distribution, product performance, and the impact of operational costs through an interactive dashboard.

---
