create or replace function calcbilling (YearInput int,monthInput int ) returns setof record as $$
declare r record;

begin
	for r in( select billing.lname, fid, sum(hbilling*hours) as sumToPay
		from billing left join lawyer on billing.lname = lawyer.lname 
		where date_part('year',bdate) = YearInput and date_part('month',bdate) = monthInput
		group by  billing.lname, fid)
	loop
		return next r;
	end loop;
End;
$$ LANGUAGE plpgsql;

