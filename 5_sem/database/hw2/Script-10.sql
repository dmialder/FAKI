select split_part("fullname", ' ', 1) as "surname", split_part("fullname", ' ', 2) as "first_name",
split_part("fullname", ' ', 1) || ' ' || substring(split_part("fullname", ' ', 2) from 1 for 1) || '.' as "short_name"
from distributor.singlesales s 
where "fullname" is not null 