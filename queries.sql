--select ordernumbers and their product lines 
select a.ordernumber, b.productline
from orders as a
inner join products as b on a.PRODUCT_ID=b.PRODUCT_ID
GO

-- select orders from year 2020
select *
from orders 
where right(orderdate,4)=2020
GO
	
-- metrics from tables
select round(avg(sales),2) as AVG_SALES, round(avg(QUANTITYORDERED),2) as AVG_ORDERS,
round(avg(DAYS_SINCE_LASTORDER),2) as AVG_DAYS_LASTORDER, round(avg(PRICEEACH),2) as AVG_PRICEEACH,
round(SUM(sales),2) as TOTAL_SALES
from orders
GO
	
select max(DAYS_SINCE_LASTORDER) as maxdays, min(days_since_lastorder) as mindays , max(sales) as maxsales, min(sales) as minsales,
max(PRICEEACH) as maxpriceeach, min(PRICEEACH) as minpriceeach,max(QUANTITYORDERED) as maxquantity, min(QUANTITYORDERED) as minquantity
from orders 
GO
	
--- top 5 products in sales

select top 5 b.*,sum(a.sales) as TOTAL_SALES
from orders as a
inner join products as b on a.PRODUCT_ID=b.PRODUCT_ID
group by b.productcode
order by TOTAL_SALES desc

GO
	
-- bottom 5 products

select top 5 b.*,sum(a.sales) as TOTAL_SALES
from orders as a
left join products as b on a.PRODUCT_ID=b.PRODUCT_ID
group by b.productcode
order by TOTAL_SALES asc

Go
	
top 5 cities

select top 5 b.city,b.country,sum(a.sales) as TOTAL_SALES
from orders as a
outer join customers as b on a.CUSTOMER_ID=b.CUSTOMER_ID
group by b.city
order by TOTAL_SALES desc

GO
	
bottom 5

select top 5 b.city,b.country,sum(a.sales) as TOTAL_SALES
from orders as a
right join customers as b on a.CUSTOMER_ID=b.CUSTOMER_ID
group by b.city
order by TOTAL_SALES asc

GO
	
--orders per month/year


SELECT right(orderdate,7) as dates ,sum(sales) as TOTAL_SALES,sum(quantityordered) as TOTAL_ORDERS
from orders
group by dates
order by right(orderdate,4),substring(orderdate,lenght(orderdate)-7,2)
Go
	
-- orders per day 

SELECT right(orderdate,4) as dates ,sum(sales) as TOTAL_SALES,sum(quantityordered) as TOTAL_ORDERS
from orders
group by dates
order by dates
GO
	
-- orders per month 
SELECT substring(orderdate,lenght(orderdate)-7,2) as dates ,sum(sales) as TOTAL_SALES,sum(quantityordered) as TOTAL_ORDERS
from orders
group by dates
order by dates
Go
	
-- type of product 

select b.productline,(100*count(ordernumber)/(select count(ordernumber) from orders)) || "%" as PERCENTAGES, round(sum(a.sales),2) as TOTAL_SALES,sum(a.quantityordered) as TOTAL_ORDERS,
round(avg(a.sales),2) as AVERAGE_SALES,round(avg(quantityordered),2) as AVERAGE_ORDERS
from orders as a,products as b 
where a.PRODUCT_ID=b.PRODUCT_ID
group by b.productline
GO
	
-- type of dealsize


select dealsize,(100*count(ordernumber)/(select count(ordernumber) from orders)) || "%" as PERCENTAGES
,round(sum(sales),2) as TOTAL_SALES,sum(quantityordered)  as TOTAL_ORDERS,
round(avg(sales),2) as AVERAGE_SALES,round(avg(quantityordered),2) as AVERAGE_ORDERS
from orders 
group by dealsize
Go
	
-- country

select b.country, (100*count(ordernumber)/(select count(ordernumber) from orders)) || "%" as PERCENTAGES,round(sum(a.sales),2) as TOTAL_SALES,sum(a.quantityordered) as TOTAL_ORDERS,
round(avg(a.sales),2) as AVERAGE_SALES,round(avg(quantityordered),2) as AVERAGE_ORDERS
from orders as a
inner join customers as b on a.CUSTOMER_ID=b.CUSTOMER_ID
group by b.country
GO


-- discerning "days since last order"
	
with cte as (
select ordernumber,DAYS_SINCE_LASTORDER as days,
case 
when DAYS_SINCE_LASTORDER<500
then "Low"
when (DAYS_SINCE_LASTORDER<1200 and DAYS_SINCE_LASTORDER>=500)
then "Less"
when (DAYS_SINCE_LASTORDER<2200 and DAYS_SINCE_LASTORDER>=1200)
then "Average"
else "High"
end as "last_time"
from orders
)


select last_time, (100*count(ordernumber)/(select count(ordernumber) from orders)) || "%" as PERCENTAGES,
round(avg(days),2) as AVERAGE_DAYS
from cte 
group by last_time
go

-- view

create view tab as select *
from orders a
inner  join products b
on a.product_id=b.product_id
inner join customers c 
on a.customer_id=c.customer_id;

-- selecting Motocycle orders from 2020 not requested in USA

select ordernumber,orderdate,sales,status,productline,country
from tab 
where cast(right(orderdate,4) as int)=2020 and productline="Motorcycles" and country not in ("USA", "UK")

-- selecting orders with customer name starting with "A" or "B" and sales bigger than 10000
	
select customername, sum(sales) as sum_sales, count(ordernumber) as order_number
from tab 
where customername like "A%" or customername like "B%"
group by customername
having sum(sales)>10000
go
	
-- create index 

CREATE UNIQUE INDEX "idx_orders" ON "orders" (
	"ORDER_ID"
)

CREATE UNIQUE INDEX "idx_customer" ON "customers" (
	"CUSTOMER_ID"
)
CREATE UNIQUE INDEX "idx_product" ON "products" (
	"PRODUCT_ID"
)

-- average, max a count of orders´s requests 
	
select round(avg(oln),2) as Average_number,max(oln) as Max_number,count(oln) as Unique_Orders
from (select max(orderlinenumber) as oln
from orders 
group by ordernumber)

