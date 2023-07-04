-- cars sold this month and last month
select * from sales

select strftime('%Y-%m', soldDate) 'monthSold'
, count(*) as numberSold 
from sales
group by strftime('%Y-%m', soldDate)