create table Lawyer
(lname varchar(40) not Null,
sdate date,
hbilling integer,
partner date,
primary key (lname));

create table File
(fid numeric(7,0) not Null,
fname varchar (100),
description varchar (1024), 
status date,
cname varchar(40),
lname varchar(40),
primary key (fid));

create table Client
(cname varchar(40) not Null,
tel char(11),
address varchar (50),
primary key (cname));

create table Billing
(fid numeric(7,0) not Null,
bdate date not Null,
lname varchar(40) not Null,
hours integer,
descr varchar (100), 
primary key (fid, bdate, lname),
foreign key (fid) references File,
foreign key (lname) references Lawyer);

create table Lonfile
(fid numeric(7,0) not Null,
lname varchar (40) not Null,
responsibility varchar (50),
primary key (fid, lname),
foreign key (fid) references File,
foreign key (lname) references Lawyer);