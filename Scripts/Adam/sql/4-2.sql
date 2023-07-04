select strftime('%Y', soldDate) 'soldYear', strftime('%m', soldDate) 'soldMonth'
from sales

with cte_sales as (
select sum(salesAmount) 'salesAmount', strftime('%Y', soldDate) 'soldYear', strftime('%m', soldDate) 'soldMonth'
from sales
group by soldYear, soldMonth
)
select soldYear, soldMonth, salesAmount, sum(salesAmount) OVER (PARTITION by soldYear ORDER BY soldYear, soldMonth) as Total
from cte_sales
order by soldYear, soldMonth