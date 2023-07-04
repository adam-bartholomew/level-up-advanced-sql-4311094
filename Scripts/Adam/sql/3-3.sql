-- all sales where the car purchased was electric, using a subquery

select * 
from sales s
left join inventory i on s.inventoryId = i.inventoryId 
where i.modelId = (select modelId from model where EngineType = 'Electric')

select * from inventory;
select * from model;