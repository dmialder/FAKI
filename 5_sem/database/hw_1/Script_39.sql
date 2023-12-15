select distinct "category", avg("salesRub"), avg("sales") from distributor.singlesales s 
where "category" is not null and "sales" is not null 
group by "category" 