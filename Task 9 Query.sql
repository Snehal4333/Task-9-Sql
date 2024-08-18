select * from details

--Example-1
	
select customer_id,customer_name,category,country from details 
where product_id ~ 'FUR' limit 100

--Example-2

select customer_name,product_id,segment,sub_category,amount::text from details 
where amount::text ~*'^1[0-9](2|3|4|5)[0-9]$'

--Example-3

select customer_id,customer_name,segment,quantity from details where segment ~*'^C[a-z]{8}$' limit 100

--Example-4

select customer_name,quantity,order_date,payment_mode from details where payment_mode ~*'^C[a-z](C|D)$' limit 20

--Example-5

select order_id,category,sub_category from details where state ~*'^C[a-z](l|i)[a-z]{5}$'

--Example-6

select * from details where customer_name ~*'an' limit 50 