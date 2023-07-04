select e.employeeId, e.firstName, e.lastName, count(*) '# sold', MAX(salesAmount) as 'Max', MIN(salesAmount) as 'Min'
from sales s
inner join employee e on s.employeeId = e.employeeId
where s.soldDate >= date('now', 'start of year')
group by e.employeeId
having count(*) > 5
