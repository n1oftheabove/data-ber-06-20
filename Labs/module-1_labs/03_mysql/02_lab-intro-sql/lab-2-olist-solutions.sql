-- question 1
SELECT
	CONCAT(MIN(DATE(first_contact_date)), ' and ', MAX(DATE(first_contact_date)))
FROM olist.marketing_qualified_leads
LIMIT 10;

-- question 2

SELECT
	origin,
  COUNT(*)
FROM olist.marketing_qualified_leads
WHERE YEAR(first_contact_date) = 2018
GROUP BY origin
ORDER BY 2 DESC
LIMIT 3;

-- question 3

SELECT
	first_contact_date,
    mql_id,
    COUNT(*)
FROM olist.marketing_qualified_leads
GROUP BY first_contact_date
ORDER BY 3 DESC
LIMIT 1;

-- question 4

SELECT
	product_category_name,
    COUNT(*)
FROM olist.products
GROUP BY product_category_name
ORDER BY 2 DESC
LIMIT 2;

-- question 5

SELECT
	product_category_name,
    product_weight_g
FROM olist.products
ORDER BY 2 DESC
LIMIT 1;

-- question 6

SELECT
	product_category_name,
	product_length_cm + product_height_cm + product_width_cm AS dim
FROM olist.products
ORDER BY dim DESC
LIMIT 1;

-- question 7

SELECT
	payment_type,
    order_id,
    COUNT(*)
FROM olist.order_payments
GROUP BY payment_type
ORDER BY 3 DESC
LIMIT 1;

-- question 8

SELECT
	payment_value,
    order_id
FROM olist.order_payments
ORDER BY 1 DESC
LIMIT 1;

-- question 9

SELECT
    COUNT(DISTINCT seller_city),
    seller_state
FROM olist.sellers
GROUP BY seller_state
ORDER BY 1 DESC;
