SELECT company_name as Company, count(products.supplier_id) as NumberOfProducts into temptable
FROM suppliers 
JOIN products
     ON products.supplier_id = suppliers.supplier_id
     group by company_name
order by numberofproducts desc, company_name;

select company from temptable 
where numberofproducts > 4;