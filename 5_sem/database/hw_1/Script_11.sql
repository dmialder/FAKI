select * from singlesales s 
where "branchName" in ('Москва', 'Самара') and "checkId" is null
limit 100