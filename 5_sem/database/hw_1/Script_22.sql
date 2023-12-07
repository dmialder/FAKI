select AVG("sales") as "AVG_sales", AVG("salesRub") as "AVG_salesRub" from singlesales as s
where "checkId" is not null
limit 100