/*
Perfect Valley Furniture Company (PVFC)
Customer Spending Analysis

Business Question:
Which customers have total spending above the average
total spending of all customers?

Business Purpose:
Identify higher-value customers based on their total
purchase value.

Techniques:
- Multi-table JOIN
- Nested Subquery
- Aggregation
- GROUP BY
- HAVING
- Calculated Sales Metric
*/

SELECT
    c.cust_id,
    c.fname,
    c.lname,
    SUM(
        op.quant * p.unit_price * (1 - op.discount_pct / 100)
    ) AS customer_total
FROM gb_cust c
JOIN gb_order o
    ON c.cust_id = o.cust_id
JOIN gb_ord_prod op
    ON o.order_id = op.order_id
JOIN gb_prod p
    ON op.prod_id = p.prod_id
GROUP BY
    c.cust_id,
    c.fname,
    c.lname
HAVING
    SUM(
        op.quant * p.unit_price * (1 - op.discount_pct / 100)
    ) >
    (
        SELECT AVG(customer_total)
        FROM (
            SELECT
                c2.cust_id,
                SUM(
                    op2.quant * p2.unit_price *
                    (1 - op2.discount_pct / 100)
                ) AS customer_total
            FROM gb_cust c2
            JOIN gb_order o2
                ON c2.cust_id = o2.cust_id
            JOIN gb_ord_prod op2
                ON o2.order_id = op2.order_id
            JOIN gb_prod p2
                ON op2.prod_id = p2.prod_id
            GROUP BY
                c2.cust_id
        ) AS t
    );
