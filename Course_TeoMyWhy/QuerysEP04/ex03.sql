
--Qual o peso medio dos produtos vendidos por sellers de cada estado?
--Considerando somente o ano de 2017 e pedidos entregues.


SELECT 

    t4.seller_state,
    avg(t3.product_weight_g) as avg_peso

FROM tb_orders as t1

LEFT JOIN tb_order_items as t2
on t1.order_id = t2.order_id

LEFT JOIN tb_products as t3
on t2.product_id = t3.product_id

LEFT JOIN tb_sellers as t4
on t2.seller_id = t4.seller_id

WHERE t1.order_status = 'delivered' and
strftime("%Y", order_approved_at) = '2017'

GROUP BY t4.seller_state