SELECT company_name as Company, count(products.supplier_id) as NumberOfProducts
FROM suppliers 
JOIN products
     ON products.supplier_id = suppliers.supplier_id
     group by company_name
order by numberofproducts desc, company_name;