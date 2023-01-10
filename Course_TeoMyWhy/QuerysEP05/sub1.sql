

-- A receita total por estado do seller, considerando a categoria mais vendida


SELECT 
    t2.seller_state,
    t1.product_id,
    t3.product_category_name,
    round(sum(price),2) as receita

FROM tb_order_items as t1

LEFT JOIN tb_sellers as t2
on t1.seller_id = t2.seller_id

LEFT JOIN tb_products as t3
on t1.product_id = t3.product_id

WHERE product_category_name = (

        SELECT
        t2.product_category_name
        FROM tb_order_items as t1
        LEFT JOIN tb_products as t2
        on t1.product_id = t2.product_id
        GROUP BY t2.product_category_name
        ORDER BY count(*) desc
        limit 1
    )

GROUP BY t2.seller_state,
        t1.product_id,
        t3.product_category_name

