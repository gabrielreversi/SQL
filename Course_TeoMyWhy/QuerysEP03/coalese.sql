

SELECT
    
    distinct coalesce(product_category_name, 'outros') as category

FROM tb_products

ORDER BY product_category_name