


SELECT 
    product_category_name,
    min(product_name_lenght) as minName,
    max(product_name_lenght) as maxName,
    avg(product_name_lenght) as avgName

FROM tb_products

WHERE product_description_lenght > 100

GROUP BY product_category_name

--HAVING count(product_description_lenght) >100

limit 10
