
create or replace function calcbilling (YearInput int,monthInput int )
returns table((lname varchar (40),fid numeric(7,0),sumToPay int) as $$

begin
	return query( select billing.lname, billing.fid, sum(hbilling*hours) as sumToPay
		from billing left join lawyer on billing.lname = lawyer.lname 
		where date_part('year',bdate) = YearInput and date_part('month',bdate) = monthInput
		group by  billing.lname, fid);
End;
$$ LANGUAGE plpgsql;

