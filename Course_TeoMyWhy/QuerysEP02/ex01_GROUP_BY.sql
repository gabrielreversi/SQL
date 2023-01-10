



SELECT
    product_category_name,
    min(product_description_lenght) as minDescription,
    max(product_description_lenght) as maxDescription,
    avg(product_description_lenght) as avgDescription

FROM tb_products

GROUP BY product_category_name

limit 10
