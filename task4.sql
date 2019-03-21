
SELECT Company_name as Company, String_AGG (cast(Order_id as text), ',') AS IDs
FROM orders 
left join customers
on orders.customer_id = customers.customer_id
GROUP BY customers.customer_id
order by company_name;