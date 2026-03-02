-- Q1: customer names and their order amounts using INNER joins
​select c.customer_name, o.order_amount
from customers c
inner join orders o on c.customer_id = o.customer_id;
--
​-- Q2: ALL customers and their order amounts
​select c.customer_name, o.order_amount
from customers c
left join orders o on c.customer_id = o.customer_id;
--
​-- Q3: Show ALL orders with customer names
​select o.order_amount, c.customer_name
from customers c
right join orders o on c.customer_id = o.customer_id;
--
​-- Q4: Find customers who have NOT placed any orders
​select c.customer_name, o.customer_id as Order
from customers c
left join orders o on c.customer_id = o.customer_id
where o.customer_id is null;
--
​-- Q5: Find orders that do NOT have a valid customer
​(Includes NULL customer_id and invalid IDs like 60, 70)
select o.order_id, o.customer_id, o.order_amount
from orders o
left join customers c
on o.customer_id = c.customer_id
where c.customer_id IS NULL;
--
​-- Q6: Show customer name and order amount (But only for orders greater than 1000)
​select c.customer_name, o.order_amount
from orders o
join customers c on o.customer_id = c.customer_id
where o.order_amount > 1000;
--
​-- Q7: Show all customers from 'Chennai' and their orders (Even if they have no orders)
​select c.customer_name, c.city, o.order_amount
from orders o
left join customers c on o.customer_id = c.customer_id
where c.city = "chennai" ;
--
​-- Q8: Count how many orders each customer has placed
​select c.customer_name, count(o.order_id) as order
from orders o
join customers c on o.customer_id = c.customer_id
group by c.customer_name ;
--
​-- Q9: Calculate total amount spent by each customer
​select c.customer_name, sum(o.order_amount) as total_spent
from orders o
join customers c on o.customer_id = c.customer_id
group by c.customer_name ;
--
​-- Q10: Find the customer who spent the HIGHEST total amount
​select c.customer_name, sum(o.order_amount) as total_amount
from orders o
join customers c on o.customer_id = c.customer_id
group by c.customer_name order by total_amount DESC
limit 1 ;

