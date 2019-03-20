SELECT product_name, suppliers.company_name FROM products
inner join Suppliers 
on Products.supplier_id = Suppliers.supplier_id
order by products.product_name, suppliers.company_name asc;