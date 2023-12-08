select count(*), count("checkId"), count(*)-count("checkId") from singlesales s 
limit 100