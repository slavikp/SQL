create or replace function calcbilling (bdate date) returns setof record as $$
Declare r record
brgin
for r in
select sum()
from
where
loop 
	return next r;
End loop;
End; $$ LANGUAGE plpgsql;

