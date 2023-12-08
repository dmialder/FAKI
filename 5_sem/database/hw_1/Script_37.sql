select "branchName" from (
	select "branchName", "fullname", count(distinct "companyId") from singlesales s 
	where "branchName" is not null and "fullname" is not null
	group by "branchName", "fullname"
)
group by "branchName"
limit 100