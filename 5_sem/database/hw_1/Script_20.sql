select *, "salesRub" * 0.2/1.2 as Nds, "salesRub" / 1.2 as salesRubNds from singlesales as s
where "companyId" is not null and "checkId" is not null
limit 100