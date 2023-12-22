select "companyName" from distributor.company c 
where replace(lower("companyName"), ' ', '') like 'ооо%'