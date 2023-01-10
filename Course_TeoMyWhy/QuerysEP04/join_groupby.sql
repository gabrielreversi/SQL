


SELECT 
    t2.product_category_name,
    sum(price) as receita,
    count(*) as total_itens_Vendidos,
    count(DISTINCT t1.order_id) as qtd_pedidos,
    round( count(*) / CAST(count(DISTINCT t1.order_id) as float), 2) as mediaItensPedido

FROM tb_order_items as t1

LEFT JOIN tb_products as t2
on t1.product_id = t2.product_id

LEFT JOIN tb_orders as t3
on t1.order_id = t3.order_id

WHERE t3.order_status = 'delivered' and
strftime('%Y', t3.order_approved_at) = '2017'

GROUP BY product_category_name
ORDER BY (t1.price) desc