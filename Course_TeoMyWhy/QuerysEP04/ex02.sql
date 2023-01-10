
--QUal o valor total da receita gerada por sellers por cada estado?
--considerar apenas pedidos entregues


SELECT 
    
    t3.seller_state,
    round(sum(price), 2) as receita

FROM tb_order_items as t1

LEFT JOIN tb_orders as t2
on t1.order_id = t2.order_id

LEFT JOIN tb_sellers as t3
on t1.seller_id = t3.seller_id

WHERE t2.order_status = 'delivered'

GROUP BY t3.seller_state