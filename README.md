# GlobalShop E‑commerce Analytics

End‑to‑end data analysis project using the Brazilian Olist e‑commerce dataset.
The goal is to simulate a real business analytics workflow: database ingestion, validation, exploratory analysis and business insights.

---

## 📊 Project Objective
This project analyzes an e‑commerce operation to answer real business questions such as:

- How is the company growing over time?
- Which product categories generate the most revenue?
- What is the customer purchasing behavior?
- How do payments and installments affect sales?
- Are logistics impacting customer experience?

---

## 🛠 Tech Stack
- MySQL (Data storage & querying)
- SQL (Joins, aggregations, validation)
- Python (Data analysis — upcoming)
- Power BI (Dashboard — upcoming)
- Git & GitHub (Version control)

---

## 🗂 Dataset
Brazilian E‑commerce Public Dataset by Olist  
Contains information about:

- Customers
- Orders
- Order items
- Payments
- Products
- Sellers

---

## Phase 1 — Data Ingestion & Validation
Steps performed:

1. Database schema creation
2. Bulk CSV ingestion using `LOAD DATA INFILE`
3. Referential integrity validation
4. Data consistency checks

### Final validated dataset

| Table | Rows |
|------|----|
| orders | 99,441 |
| order_items | 111,046 |
| payments | 103,886 |
| products | 32,340 |
| customers | 99,441 |

Database ready for analysis.

---

## Phase 2 — Exploratory Data Analysis (In Progress)
Business analysis using SQL to generate insights about revenue, customers and products.

---

## Author
Project developed as part of a data analytics learning portfolio.

