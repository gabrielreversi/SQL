

-- A receita total por estado do seller, considerando a categoria mais vendida
-- com with (melhor maneira)

WITH tb_best_category as (

        SELECT t2.product_category_name
        FROM tb_order_items as t1
        LEFT JOIN tb_products as t2
        on t1.product_id = t2.product_id
        GROUP BY t2.product_category_name
        ORDER BY count(*) desc
        limit 3
),

tb_receita_estado_produto as (

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

        INNER JOIN  tb_best_category as t4
        on t3.product_category_name = t4.product_category_name

        GROUP BY t2.seller_state,
                t1.product_id,
                t3.product_category_name

)

SELECT * FROM tb_receita_estado_produto as t1

INNER JOIN tb_best_category as t2
on t1.product_category_name = t2.product_category_name
