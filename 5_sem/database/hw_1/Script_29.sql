select sum("salesRub"), "fullname" from singlesales s 
group by "fullname"
order by sum("salesRub") desc
limit 100