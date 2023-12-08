select * from singlesales
where "checkId" in (
	select "checkId" from singlesales
	where round("salesRub") in (
		select round(max("salesRub")) from singlesales
		where "salesRub" is not null
		)
)
limit 100