select max("salesRub"), min("salesRub") from singlesales s 
where "salesRub" > 0 and "sales" > 0
limit 100