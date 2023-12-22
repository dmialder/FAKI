select "branchId", extract('year' from "dateId") as "year", extract('month' from "dateId") as "month", round(sum("salesRub")) as "total_salesRub" from distributor.sales s2  
group by "year", "month", "branchId"
order by "branchId", "year", "month"
