
 -- Ex2: Quantos produtos tem mais de 5 litros?

 SELECT 

    COUNT(product_id) as qty_productsID,
    COUNT( DISTINCT product_id) as qty_productID_distinct,
    COUNT( DISTINCT product_category_name) as qty_category
 
 FROM tb_products

 WHERE product_length_cm * product_height_cm * product_width_cm / 1000 > 5