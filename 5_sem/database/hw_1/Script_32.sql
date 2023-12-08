select "branchName", "salesManagerId", count(distinct "companyId") from singlesales s 
where "branchName" is not null and "companyId" is not null and "salesManagerId" is not null 
group by "branchName", "salesManagerId"
order by "branchName", count(distinct "companyId") desc 
limit 100