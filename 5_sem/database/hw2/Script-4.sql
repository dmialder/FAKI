select "date", "total_salesRub" from (
	select extract(month from date_trunc('month', "dateId")) as "num_month", to_char(date_trunc('month', "dateId"), 'Month') as "date", round(sum("salesRub")) as "total_salesRub" from distributor.singlesales
	where extract(year from "dateId") = 2012
	group by date_trunc('month', "dateId")
	order by "num_month"
	)
limit 100