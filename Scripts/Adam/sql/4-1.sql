select e.firstName, e.lastName, m.model, count(m.model) as NumberSold,
  rank() OVER (PARTITION BY s.employeeId ORDER BY count(model) desc) as Rank
from sales s
INNER JOIN employee e on e.employeeId = s.employeeId
INNER JOIN inventory i on i.inventoryId = s.inventoryId
INNER JOIN model m on m.modelId = i.modelId
GROUP BY e.firstName, e.lastName, m.model