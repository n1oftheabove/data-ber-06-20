--- question 1

SELECT
  MAX(price),
  MIN(price)
FROM olist.order_items;

--- question 2

SELECT
  MIN(shipping_limit_date) AS 'min_price',
  MAX(shipping_limit_date) AS 'max_price'
CONCAT(MIN(shipping_limit_date) + 'to' + MAX(shipping_limit_date))
FROM olist.order_items;

--- question 3

SELECT customer_state, COUNT(*)
FROM olist.customers
GROUP BY customer_state
ORDER BY 2 DESC
LIMIT 3;

--- question 4 (doesn't work)

--- question 5

SELECT COUNT(DISTINCT business_segment)
FROM olist.closed_deals;

--- question 6 ---

SELECT
	business_segment,
    COUNT(*),
    SUM(declared_monthly_revenue)
FROM olist.closed_deals
GROUP BY business_segment
ORDER BY 3 DESC
LIMIT 3;

--- question 7

SELECT COUNT(DISTINCT review_score)
FROM olist.order_reviews;

--- question 8

--- question 9

SELECT
	review_score, COUNT(*)
FROM olist.order_reviews
GROUP BY review_score
ORDER BY 2 DESC
LIMIT 1;
