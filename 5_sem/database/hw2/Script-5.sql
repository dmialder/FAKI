select "companyId", 
case 
	when current_date - interval '10 year' - interval '180 day' - max("dateId") > interval '365 day' then 'long'
	when current_date - interval '10 year' - interval '180 day' - max("dateId") > interval '180 day' then 'medium'
	when current_date - interval '10 year' - interval '180 day' - max("dateId") > interval '90 day' then 'short'
end as "duration" from distributor.singlesales s 
group by "companyId"
limit 100
