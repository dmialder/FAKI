select * from singlesales s
where "index" in (
	select "index" from singlesales 
	where "salesRub" in (
		select max("salesRub") from singlesales s2 
		limit 1)
)