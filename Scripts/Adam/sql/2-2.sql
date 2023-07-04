select e.firstName, e.lastName
from employee e;

select * from sales

select e.employeeId, e.firstName, e.lastName, MAX(salesAmount) as 'Max', MIN(salesAmount) as 'Min'
from employee e
inner join sales s on s.employeeId = e.employeeId
where s.soldDate >= date('now', 'start of year')
group by e.employeeId