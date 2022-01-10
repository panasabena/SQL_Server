use school;
select * from teacher;
select * from courses;
select * from teacher;

select * from enrollments;

-- Inner Joins
select * from Enrollments
inner join teacher on teacher.Id = Enrollments.TeacherId
inner join Students on Students.id = enrollments.StudentId
inner join courses on Courses.CourseId = enrollments.CourseId

-- Select specific columns
select
t.FirstName [Teacher First Name],
s.firstname [Teacher Last Name],
s.firstname [Student Last Name],
c.Title [Course Title],
c.CourseCode [Course Title]
from Enrollments e
inner join teacher t on t.Id = e.TeacherId -- Se le pone un alias a la tabla teacher 't'
inner join students s on s.id = e.StudentId -- alias s
inner join Courses c on c.CourseId = e.CourseId -- alias 'c'
where t.Id = 2
-- Pero también se le puede poner el nombre original a todo lo anterior
-- Para mi esta bueno no omitir nombres, dado que despues puede ser confuso
select
teacher.FirstName [Teacher First Name],
students.firstname [Teacher Last Name],
Students.firstname [Student Last Name],
Courses.Title [Course Title],
Courses.CourseCode [Course Title]
from Enrollments e
inner join teacher on Teacher.Id = e.TeacherId 
inner join students on Students.id = e.StudentId
inner join Courses on Courses.CourseId = e.CourseId
where Teacher.Id = 2