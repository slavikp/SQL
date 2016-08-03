create trigger T
before insert or update on Billing
for each row
execute procedure trigf();



--------function-------------------
create or replace function trigf()  returns trigger as $$
Declare lawyerWorkOnCase  integer;
begin
	select count(lname) as countLawyer
	from
	(select lname
	from file
	where fid = new.fid  and lname = new.lname
	union 
	select lname
	from lonfile
	where fid = new.fid  and lname = new.lname) as lawyers into lawyerWorkOnCase;

	if (lawyerWorkOnCase > 0)
	then 
		return new;
	else	
		raise notice 'lawyer is not work in this case';
		if (tg_op ='UPDATE') then return old;
		elsif (tg_op='INSERT') then return Null;
		else return Null;
		end if;
	end if;

End; $$ LANGUAGE plpgsql;