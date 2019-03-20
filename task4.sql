2
SELECT Customer_id, String_AGG (cast(Order_id as text), ',') AS IDs into temptable
FROM orders 
GROUP BY customer_id; 

select Company_name, IDs
from customers
inner join temptable
on temptable.customer_id = customers.customer_id
group by company_name, IDs
order by company_name;

