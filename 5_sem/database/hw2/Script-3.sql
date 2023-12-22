select "companyId", (date_part('day', "max_date"::timestamp - "min_date"::timestamp))/("count_salesRub" - 1) as "days", 
((date_part('year', "max_date"::timestamp) - date_part('year', "min_date"::timestamp))*12 + date_part('month', "max_date"::timestamp) - date_part('month', "min_date"::timestamp))/("count_salesRub" - 1) as "months"
from (
	select "companyId", "min_date", "max_date", "count_salesRub" from(
		select "companyId", min("dateId")::date as "min_date", 
		max("dateId")::date as "max_date", count("salesRub") as "count_salesRub" from distributor.singlesales s 
		where "salesRub" is not null and "companyId" is not null
		group by "companyId")
	where "count_salesRub" >= 2
	)
limit 100