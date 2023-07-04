-- CTE (Common Table Expression)
-- Show total sales per year

with cte as (
  select strftime('%Y', soldDate) 'salesYear', salesAmount
  from sales
)
select salesYear, format("$%.2f", sum(salesAmount))
FROM cte
GROUP BY salesYear
ORDER BY salesYear
