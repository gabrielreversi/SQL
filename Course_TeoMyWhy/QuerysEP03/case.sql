


SELECT 

    distinct CASE WHEN product_category_name IS NULL THEN "Outros"
                ELSE product_category_name 
                END as product_Name

FROM tb_products

ORDER BY product_category_name