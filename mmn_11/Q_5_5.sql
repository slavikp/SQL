with lawyers as (select count(lonfile.fid) as counter, lawyer.lname, lawyer.sdate, lawyer.partner
from lonfile left join lawyer on lonfile.lname = lawyer.lname
group by lawyer.lname, lawyer.sdate, lawyer.partner)


select * from lawyers 
where counter = (select max(counter) from lawyers)
