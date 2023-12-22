


select extract('year' from "dateId") as "year", extract('isodow' from "dateId") as "day_of_week", sum("salesRub") from distributor.singlesales s 
group by "year", "day_of_week"