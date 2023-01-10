


-- Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?

SELECT 

    COUNT(product_id) as qty_product_ID,
    COUNT(DISTINCT product_id) as qty_distinct_ID,
    COUNT(DISTINCT product_category_name) as category_distinct,
    product_length_cm *	product_height_cm * product_width_cm / 1000 < 1 as product_volume


FROM tb_products

WHERE product_category_name = 'beleza_saude' 
and product_length_cm *	product_height_cm * product_width_cm / 1000 < 1

