with lawyers as (
select lonfile.fid, lawyer.lname , file.cname
from lonfile left join lawyer on lawyer.lname = lonfile.lname 
	     left join file on file.fid = lonfile.fid
where partner is null
union
select fid, lawyer.lname, file.cname from file left join lawyer on lawyer.lname = file.lname
where partner is null)

select lawyers.cname, sum(billing.hours * lawyer.hbilling) as bill
from billing left join lawyers on billing.fid = lawyers.fid
	left join lawyer on lawyers.lname = lawyer.lname
where date_part('year', bdate) = 2016 and date_part('month', bdate) = 5
and cname in (with clientWithOneCase as (select count(fid), cname from file group by cname having  count(fid) = 1) select cname from clientWithOneCase)
group by lawyers.cname