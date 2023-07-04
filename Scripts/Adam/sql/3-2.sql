-- show sales per employee for each month in 2021

select e.firstName, e.lastName, s.soldDate, s.salesAmount,
sum(case when strftime('%m', soldDate) = '01' then salesAmount end) as JanSales,
sum(case when strftime('%m', soldDate) = '02' then salesAmount end) as FebSales,
sum(case when strftime('%m', soldDate) = '03' then salesAmount end) as MarSales,
sum(case when strftime('%m', soldDate) = '04' then salesAmount end) as AprSales,
sum(case when strftime('%m', soldDate) = '05' then salesAmount end) as MaySales,
sum(case when strftime('%m', soldDate) = '06' then salesAmount end) as JunSales,
sum(case when strftime('%m', soldDate) = '07' then salesAmount end) as JulSales,
sum(case when strftime('%m', soldDate) = '08' then salesAmount end) as AugSales,
sum(case when strftime('%m', soldDate) = '09' then salesAmount end) as SepSales,
sum(case when strftime('%m', soldDate) = '10' then salesAmount end) as OctSales,
sum(case when strftime('%m', soldDate) = '11' then salesAmount end) as NovSales,
sum(case when strftime('%m', soldDate) = '12' then salesAmount end) as DecSales
from employee e
inner join sales s on s.employeeId = e.employeeId
where soldDate < '2022-01-01' and s.soldDate >= '2021-01-01'
group by e.firstName, e.lastName
