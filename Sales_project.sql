-- 1. Total kitna stock hai sabhi products ka mila kar?
select sum(Stock) as total_stock 
from [Sale Report];

-- 2. Har Category ka total stock kitna hai?
select Category, sum(Stock) as total_stock
from [Sale Report]
group by Category;

-- 3. Sabse zyada stock wale top 5 SKU_Code kaunse hain?
select top 5 SKU_code, Stock
from [Sale Report]
order by Stock DESC;

-- 4. Kaunse Color mein sabse zyada design variety hai?
select top 1 Color, count(distinct(Design_No)) as design_count
from [Sale Report]
group by Color
order by design_count DESC;

-- 5. Size 'XXL' mein total kitna stock available hai?
select sum(Stock) as total_stock
from [Sale Report]
where Size = 'XXL';

-- 6. Kaunse products ka stock 5 se kam hai (low stock alert)?
select *
from [Sale Report]
where Stock < 5;
