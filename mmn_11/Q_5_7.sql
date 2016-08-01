--all lawyer with case and client
with lawyers as (
select lonfile.fid, lawyer.lname , file.cname
from lonfile left join lawyer on lawyer.lname = lonfile.lname 
	     left join file on file.fid = lonfile.fid
union
select fid, lawyer.lname, file.cname from file left join lawyer on lawyer.lname = file.lname)


select cname, count(fid)
from file 
where file.status is null 
--all client with no close case
and cname not in (select distinct cname from file where status is not null) 
--all client with all lawyers work on is cases
and cname in (select cname from (select count(lname), cname from (select distinct cname,lname from lawyers) as t group by cname having  count(lname) = (select count(lname) from lawyer)) as allLawyerWorkForClient)
group by cname
having count(fid) >= 3 

