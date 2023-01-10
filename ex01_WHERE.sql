

-- Ex1: Quantos produtos temos da categoria 'artes'?

SELECT 

    COUNT(product_id) as qty_productsID,
    COUNT( DISTINCT product_id) as qty_productID_distinct,
    COUNT( DISTINCT product_category_name) as qty_category

FROM tb_products

WHERE product_category_name = 'artes'
