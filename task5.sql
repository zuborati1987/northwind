select suppliers.company_name as Company, products.product_name as Product, 
products.unit_price as Price
from products
join suppliers
on products.supplier_id = suppliers.supplier_id
group by company, product, price
order by price desc, product asc, company asc;