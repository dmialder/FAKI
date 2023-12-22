select date_trunc('month', "dateId") as "date",
round(sum("salesRub")) as "total_money" from distributor.singlesales s 
group by "date"
order by "date"
limit 100