
select c.firstName, c.lastName, c.email, s.salesAmount, s.soldDate from customer c
inner join sales s on c.customerId = s.customerId
UNION
select c.firstName, c.lastName, c.email, s.salesAmount, s.soldDate from customer c
left join sales s on c.customerId = s.customerId
UNION
select c.firstName, c.lastName, c.email, s.salesAmount, s.soldDate from sales s
left join customer c on c.customerId = s.customerId
where c.customerId is NULL;