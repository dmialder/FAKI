select * from singlesales
where "salesRub" in (
select max("salesRub") from singlesales
where "salesRub" is not null
)
limit 100