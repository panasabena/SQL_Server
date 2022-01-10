-- Usamos la tabla School
use school
-- Insertamos en la tabla tablename(columns...) values (values...)
-- single row insert
insert into Students(firstname, lastname, dateofbirth, enrollmentdate) values
('Test', 'Student', '2001-09-08', null),
-- Insert into tablename (columns...) values (values...)
-- Multiple row insert
('Test11', 'Student11', '2001-09-08', '2019-03-05'),
('Test2', 'Student2', '2001-09-08', null),
('Test3', 'Student3', '2001-09-08', '2019-03-05'),
('Test4', 'Student4', '2001-09-08', null),
('Test5', 'Student5', '2001-09-08', null),
('Test6', 'Student6', '2001-09-08', '2019-03-05')