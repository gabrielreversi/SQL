

SELECT 
    product_category_name,
    max(product_name_lenght) as maxName,
    min(product_name_lenght) as minName,
    avg(product_name_lenght) as avgName

FROM tb_products

GROUP BY product_category_name

limit 10
