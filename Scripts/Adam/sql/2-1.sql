select e.employeeId, e.firstName, e.lastName, count(*) as carsSold
from sales s
inner join employee e on s.employeeId = e.employeeId
group by e.employeeId, e.firstName, e.lastName
order by carsSold desc
