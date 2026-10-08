/*
Perfect Valley Furniture Company (PVFC)
Product Demand Ranking

Business Question:
Which products are ordered the most, and what is the ranking
of each product based on total quantity ordered?

Business Purpose:
Identify the products with the strongest order demand and
compare their relative popularity.

Techniques:
- Aggregation
- GROUP BY
- Derived Table
- RANK() Window Function
- ORDER BY
*/

SELECT
    p.prod_id,
    p.name AS product_name,
    q.total_quantity,
    RANK() OVER (
        ORDER BY q.total_quantity DESC
    ) AS quantity_rank
FROM gb_prod p
JOIN (
    SELECT
        prod_id,
        SUM(quant) AS total_quantity
    FROM gb_ord_prod
    GROUP BY prod_id
) q
    ON p.prod_id = q.prod_id
ORDER BY quantity_rank;
