select "branchName", count(distinct "companyId") from singleSales
where "branchName" is not null and "companyId" is not null
group by "branchName"
order by count(distinct "companyId") desc 
limit 100