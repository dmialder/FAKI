select sum("salesRub"), "checkId" from singlesales s 
where "checkId" is not null
group by "checkId"
order by sum("salesRub") desc
limit 100