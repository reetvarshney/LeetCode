# Write your MySQL query statement below
SELECT ROUND(AVG(CASE WHEN ORDER_DATE = CUSTOMER_PREF_DELIVERY_DATE THEN 1 ELSE 0 END)*100,2) AS IMMEDIATE_PERCENTAGE
FROM Delivery d
WHERE order_date = (
    SELECT MIN(order_date)
    FROM Delivery
    WHERE customer_id = d.customer_id
);

