select count(*) from 
(
select "checkId" from singlesales s 
where "checkId" is not null
group by "checkId"
having sum("salesRub") >= 10000
)
limit 100