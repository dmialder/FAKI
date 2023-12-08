select sum("sales"), sum("salesRub") from singlesales s 
where "sales" > 0 and "salesRub" > 0
limit 100