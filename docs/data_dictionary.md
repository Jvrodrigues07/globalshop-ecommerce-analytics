# Data Dictionary

This document describes the main tables and columns used in the analysis.

---

## orders
**Grain:** 1 row per order.

- order_id: unique order identifier
- customer_id: customer identifier (may not reliably track repeat purchases in this dataset)
- order_status: order status (delivered, shipped, canceled)
- order_purchase_timestamp: purchase datetime
- order_delivered_customer_date: actual delivery date
- order_estimated_delivery_date: promised delivery date

---

## payments
**Grain:** 1 row per payment record (can be multiple per order).

- order_id: order identifier
- payment_type: payment method (credit_card, boleto, voucher, debit_card)
- payment_installments: number of installments
- payment_value: payment amount

---

## order_items
**Grain:** 1 row per item in an order.

- order_id: order identifier
- order_item_id: item sequence number
- product_id: product identifier
- seller_id: seller identifier
- shipping_limit_date: seller shipping deadline
- price: product price
- freight_value: shipping cost

---

## products
**Grain:** 1 row per product.

- product_id: product identifier
- product_category_name: product category
- product_name_length: product name length
- product_description_length: description length
- product_photos_qty: number of photos
- product_weight_g: weight in grams
- product_length_cm: length
- product_height_cm: height
- product_width_cm: width

---

## customers
**Grain:** 1 row per customer record.

- customer_id: customer identifier
- customer_unique_id: unique customer identifier
- customer_zip_code_prefix: zip code prefix
- customer_city: city
- customer_state: state
