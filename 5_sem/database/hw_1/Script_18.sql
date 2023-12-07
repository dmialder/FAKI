select "companyId" || ' (' || "region" || ')' from singlesales
where "companyId" is not null and "region" is not null
limit 100