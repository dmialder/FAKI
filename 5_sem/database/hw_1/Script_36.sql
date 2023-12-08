select "checkId" from singlesales s 
where "checkId" is not null 
group by "checkId"
order by count(distinct "itemId") desc 
limit 1