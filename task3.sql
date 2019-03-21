SELECT company_name as Company
FROM suppliers 
JOIN products
     ON products.supplier_id = suppliers.supplier_id
     group by company_name
     having count(products.supplier_id) > 4
order by company_name;