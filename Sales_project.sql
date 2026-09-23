-- 1. What is the total stock across all products?
select sum(Stock) as total_stock 
from [Sale Report];

-- 2. What is the total stock per category?
select Category, sum(Stock) as total_stock
from [Sale Report]
group by Category;

-- 3. Which are the top 5 SKU codes with the highest stock?
select top 5 SKU_code, Stock
from [Sale Report]
order by Stock DESC;

-- 4. Which color has the highest design variety (most distinct designs)?
select top 1 Color, count(distinct(Design_No)) as design_count
from [Sale Report]
group by Color
order by design_count DESC;

-- 5. What is the total stock available for size 'XXL'?
select sum(Stock) as total_stock
from [Sale Report]
where Size = 'XXL';

-- 6. Which products have stock less than 5 (low stock alert)?
select *
from [Sale Report]
where Stock < 5;
