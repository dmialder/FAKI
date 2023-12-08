select 'Обои' as "category", count("index") as "count", sum("sales") as "sum_sales" from singlesales s 
where "category" = 'Обои'
union
select 'Сантехника' as "category", count("index") as "count", sum("sales") as "sum_sales" from singlesales s2 
where "category" = 'Сантехника'
limit 100