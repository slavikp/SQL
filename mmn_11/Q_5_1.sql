select lname,hbilling
from Lawyer
where date_part ('year',partner) <= 2010