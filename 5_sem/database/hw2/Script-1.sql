select extract(year from date_trunc('month', "dateId")) as "year", 
extract(month from date_trunc('month', "dateId")) as "month",
round(sum("salesRub")) as "total_return"
from distributor.singlesales s 
group by date_trunc('month', "dateId")
order by "year", "month"
limit 100