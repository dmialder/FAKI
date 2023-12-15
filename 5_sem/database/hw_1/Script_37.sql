select "branchName", round(avg(kek)) as lel from(
	select "fullname", "branchName", count("companyId") as kek from distributor.singlesales s 
	group by "fullname", "branchName")
group by "branchName"
order by lel desc 
limit 100