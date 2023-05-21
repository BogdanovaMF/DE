-- key metrics
-- 1) сумма продаж
select sum(sales) as sales
from orders;

-- сумма продаж (без возврата)
select sum(sales) as sales
from orders o left join "returns" r on o.order_id = r.order_id
where r.order_id is null;

-- 2) сумма выручки
select round(sum(profit)*100/sum(sales),2) as profit_ratio
from orders;

-- 3) количество клиентов
select count(distinct customer_id)
from orders;

-- 4) сумма продаж по категориям
select  category, sum(sales) as sales
from orders
group by category
order by sales desc;

-- 5) сумма продаж по регионам
select  region , sum(sales) as sales
from orders
group by region
order by sales desc;

-- 6) сумма продаж по штатам
select  state, sum(sales) as sales
from orders
group by state
order by sales desc;

