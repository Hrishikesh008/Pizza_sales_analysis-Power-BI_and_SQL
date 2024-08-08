select * from pizza_sales

select DATENAME(DW, order_date) as order_day, count(distinct order_id)as total_orders
from pizza_sales
group by  DATENAME(DW, order_date)


select datename(month, order_date) as month_name, count(distinct order_id)as Total_orders
from pizza_sales
group by datename(month, order_date)
order by Total_orders desc


select pizza_category, 
sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as total_sales
from pizza_sales
where month(order_date) = 1 
group by pizza_category


select pizza_size, 
sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as total_sales
from pizza_sales
group by pizza_size
order by pizza_size asc

select top 5 pizza_name, sum(total_price) as Total_revenue from pizza_sales
group by pizza_name 
order by Total_revenue asc

select top 5 pizza_name, sum(quantity) as Total_quantity from pizza_sales
group by pizza_name 
order by Total_quantity desc