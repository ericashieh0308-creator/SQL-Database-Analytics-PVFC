/*
Perfect Valley Furniture Company (PVFC)
Market Demand Analysis

Business Question:
For each product, which countries demonstrate meaningful demand
(total quantity greater than 10 units) and may represent key markets
for further marketing investment?

Techniques:
- Multi-table JOIN
- Aggregation
- GROUP BY
- HAVING
- ORDER BY
*/

SELECT
    p.prod_id,
    p.name AS product_name,
    c.country_name,
    SUM(op.quant) AS total_quantity
FROM gb_prod p
JOIN gb_ord_prod op
    ON p.prod_id = op.prod_id
JOIN gb_order o
    ON op.order_id = o.order_id
JOIN gb_cust cu
    ON o.cust_id = cu.cust_id
JOIN gb_country c
    ON cu.country_id = c.country_id
GROUP BY
    p.prod_id,
    p.name,
    c.country_name
HAVING SUM(op.quant) > 10
ORDER BY
    total_quantity DESC,
    c.country_name;
