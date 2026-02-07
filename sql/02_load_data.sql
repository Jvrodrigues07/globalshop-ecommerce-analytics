-- Phase 1: Bulk data loading (edit file paths as needed)
SET GLOBAL local_infile = 1;

-- orders
LOAD DATA LOCAL INFILE 'olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

-- order_items
LOAD DATA LOCAL INFILE 'olist_order_items_dataset.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

-- payments
LOAD DATA LOCAL INFILE 'olist_order_payments_dataset.csv'
INTO TABLE payments
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

