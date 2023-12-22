select extract('year' from "dateId") as "year", extract('month' from "dateId") as "month", 
"branchId", sum("salesRub") from distributor.sales s2  
group by "year", "month", "branchId"
order by "year", "month"