
select e.firstName, e.lastName, e.title, e.startDate FROM
employee e
left join sales s on e.employeeId = s.employeeId
where s.salesId is null
and e.title = 'Sales Person';