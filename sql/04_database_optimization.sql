/*
Perfect Valley Furniture Company (PVFC)
Database Optimization

Purpose:
Demonstrate indexing strategies used to support database
performance and query optimization.

Index Types:
- Non-Unique Indexes
- Composite Indexes
- Function-Based Indexes
*/


/* =========================================================
   1. NON-UNIQUE INDEXES
   ========================================================= */

/* Support customer-based order lookups */
CREATE INDEX idx_gb_order_cust_id
ON gb_order (cust_id);

/* Support customer last-name searches */
CREATE INDEX idx_gb_cust_lname
ON gb_cust (lname);


/* =========================================================
   2. COMPOSITE INDEXES
   ========================================================= */

/* Support order-product lookup patterns */
CREATE INDEX idx_ord_prod_order_product
ON gb_ord_prod (order_id, prod_id);

/* Support geographic customer analysis */
CREATE INDEX idx_cust_country_state
ON gb_cust (country_id, state);


/* =========================================================
   3. FUNCTION-BASED INDEXES
   ========================================================= */

/* Support analysis based on order month */
ALTER TABLE gb_order
ADD INDEX idx_order_month ((MONTH(order_date)));

/* Support case-insensitive customer last-name searches */
ALTER TABLE gb_cust
ADD INDEX idx_lname_upper ((UPPER(lname)));


/* =========================================================
   4. REVIEW INDEX METADATA
   ========================================================= */

SELECT
    table_schema,
    table_name,
    index_name,
    non_unique,
    seq_in_index,
    column_name,
    sub_part,
    index_type
FROM information_schema.statistics
WHERE table_schema = 'gb_pvfc'
ORDER BY
    table_name,
    index_name,
    seq_in_index;
