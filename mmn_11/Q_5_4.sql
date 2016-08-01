with maxHoursPaymentForFile as (select max(billing.hours * lawyer.hbilling) as maxTotalPayment , file.fid
	from file left join billing on file.fid = billing.fid 
		left join lawyer on billing.lname = lawyer.lname
	where file.status is not null and date_part('year',file.status)=date_part('year',billing.bdate) and
		date_part('month',file.status)=date_part('month',billing.bdate)
	group by file.fid)

select (billing.hours * lawyer.hbilling) as totalPayment , file.fname,billing.lname
from file 
	left join billing on file.fid = billing.fid 
	left join lawyer on billing.lname = lawyer.lname 
	right join maxHoursPaymentForFile on maxHoursPaymentForFile.fid = file.fid and maxHoursPaymentForFile.maxTotalPayment = (billing.hours * lawyer.hbilling)
where file.status is not null and date_part('year',file.status)=date_part('year',billing.bdate) and
	date_part('month',file.status)=date_part('month',billing.bdate) 