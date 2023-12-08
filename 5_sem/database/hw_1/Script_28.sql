select count("index") as "count", sum("sales") as "sum_sales" from singlesales s 
where "category" = 'Обои' or "category" = 'Сантехника'
limit 100