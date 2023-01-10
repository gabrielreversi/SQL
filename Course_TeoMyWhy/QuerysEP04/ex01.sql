
--Qual o valor total da receita gerada por clientes por estado?
--considerar apenas pedidos entregues.


SELECT 
    
    t3.customer_state,
    round(SUM(price),2) as valoTotal

FROM tb_order_items as t1

LEFT JOIN tb_orders as t2
on t1.order_id = t2.order_id

LEFT JOIN tb_customers as t3
on t2.customer_id = t3.customer_id

WHERE t2.order_status = 'delivered'

GROUP BY t3.customer_state
