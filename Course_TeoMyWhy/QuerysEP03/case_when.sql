

SELECT 

    distinct CASE WHEN product_category_name IS NULL THEN "Outros"
                    
                    WHEN product_category_name = 'alimentos' 
                        or product_category_name = 'alimentos_bebidas' THEN 'Alimentos'

                    WHEN product_category_name in ('artes', 'artes_e_artesanato') THEN 'Artes'

                    WHEN product_category_name like '%artigos%' then 'Artigos '
                    
                    ELSE product_category_name 
                END as product_Name

FROM tb_products

ORDER BY product_category_name