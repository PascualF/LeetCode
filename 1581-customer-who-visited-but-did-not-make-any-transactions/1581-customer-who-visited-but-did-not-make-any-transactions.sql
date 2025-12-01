# Write your MySQL query statement below
SELECT 
    vs.customer_id,
    COUNT(*) AS count_no_trans
FROM visits As vs
LEFT JOIN transactions As trx ON vs.visit_id = trx.visit_id
WHERE trx.transaction_id IS NULL
GROUP BY vs.customer_id