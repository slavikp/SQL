select distinct file.fid, file.lname, count(file.lname) as LawyerCount
from file, Lonfile
where status is null and (file.fid = lonfile.fid)
group by file.fid, file.lname
