use school; 

create table Students(
	id int primary key not null identity(1,1),
	lastname nvarchar(50),
	firstname nvarchar(50) not null,
	dateofbirth datetime not null,
	enrollmentdate datetime
);