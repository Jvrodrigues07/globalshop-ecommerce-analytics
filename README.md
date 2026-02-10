GlobalShop E‑commerce Analytics
End‑to‑end data analysis project simulating the data team of an international marketplace.

The objective of this project is to investigate how the business grows, what drives revenue, and how customer behavior and logistics impact performance.

Business Problem
The company shows continuous growth in orders, but it is unclear:

if growth comes from new or returning customers

which products truly sustain revenue

how customers prefer to pay

whether delivery performance affects reliability

The goal is to transform raw transactional data into actionable business insights.

Dataset
Brazilian Olist e‑commerce public dataset containing:

orders

customers

products

payments

logistics information

The dataset simulates a real marketplace operation with multiple sellers and nationwide deliveries.

Project Structure
sql/     → data extraction and analytical queries
python/  → data preparation and exploratory analysis
powerbi/ → business dashboard
docs/    → documentation and data dictionary

Key Analyses Performed
Growth Analysis
Monthly revenue evolution shows steady expansion driven primarily by new customer acquisition rather than retention.

Customer Behavior
Customer identifier structure prevents reliable repeat purchase tracking, indicating acquisition‑based growth model.

Product Analysis
Revenue is concentrated in a limited number of products, suggesting dependency on specific catalog segments.

Payment Behavior
Most transactions occur via credit card, indicating impulse and convenience purchases, while boleto usage reflects cautious buyers.

Logistics Performance
Average delivery time is approximately 12.5 days, but over 90% of orders arrive within the promised deadline, demonstrating operational reliability.

Business Insights
Growth is acquisition‑driven, not loyalty‑driven

Marketplace depends on specific high‑impact products

Customers rely heavily on credit for purchasing

Delivery speed is moderate but highly predictable

Tools Used
SQL (data analysis)

Python (data processing)

Power BI (dashboard & storytelling)

Author
João Vitor Rodrigues Batista
