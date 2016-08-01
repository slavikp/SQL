-- in Count i added '1' for responsible lawyer
select file.fid , file.lname, count(lonfile.fid) + 1 as countLawyer
from file left join lonfile on file.fid = lonfile.fid
where status is null 
group by file.fid , file.lname