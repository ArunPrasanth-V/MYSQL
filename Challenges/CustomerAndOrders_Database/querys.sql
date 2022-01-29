SELECT CONCAT(first_name,' ',last_name),sum(amount) as total 
    from customer JOIN orders on orders.customer_id=customer.id
    group by orders.customer_id
    order by total  desc limit 1;
    
    
    SELECT c_id,name,max(order_date) last_buy ,sum(price)as Price 
       from customersright JOIN orders  on c_id= customers.id group by c_id;
       
   SELECT name order_date,price from customers JOIN orders  on c_id= customers.id ;
   
   
   
   SELECT 
  first_name,
  IFNULL(SUM(amount),0)
from
  customers
JOIN
  orders
on
  c_id = customer_id;
  
  
  
  
customer (id,name,mailid), orders(id ,order_date,price,customer_id)
