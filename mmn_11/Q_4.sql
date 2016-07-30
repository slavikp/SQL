create or replace function calcbilling (Year date, month date) returns setof record as $$
Declare r record;
brgin
for r in
select sum()
from billing, Lawyer, Lonfile
where date_part ('year',Year) = 
loop 
	return next r;
End loop;
End; $$ LANGUAGE plpgsql;



select	lname, fid, sum(hours)
from	billing
where	bdate >= month_begda and
	bdate <= month_endda
group by lanme, fid