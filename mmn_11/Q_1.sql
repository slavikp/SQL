create table Lawyer
(lname varchar(40),
sdate date,
hbilling integer,
partner date,
primary key (lname));

create table File
(fid numeric(7,0),
fname varchar (100),
description varchar (1024), 
status date,
cname varchar(40),
lname varchar(40),
primary key (fid));

create table Client
(cname varchar(40),
tel char(11),
address varchar (50),
primary key (cname));

create table Billing
(fid numeric(7,0),
bdate date,
lname varchar(40),
hours integer,
descr varchar (100), 
primary key (fid, bdate, lname),
foreign key (fid) references File,
foreign key (lname) references Lawyer);


create table Lonfile
(fid numeric(7,0),
lname varchar (40),
responsibility varchar (50),
primary key (fid, lname),
foreign key (fid) references File,
foreign key (lname) references Lawyer);