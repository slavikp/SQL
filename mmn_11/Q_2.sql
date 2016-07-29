create trigger T
before insert or update on Billing
for each row
execute procedure trigf();



--------function-------------------
create or replace function trigf()  returns trigger as $$
Declare r record
brgin


End; $$ LANGUAGE plpgsql;

