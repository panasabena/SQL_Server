use school;
select * from teacher;
select * from Courses;
select * from Students;
select * from enrollments;
-- Joins
select * from enrollments
inner join teacher on teacher.Id = Enrollments.TeacherId
inner join students on students.id = Enrollments.StudentId
inner join Courses on Courses.CourseId = Enrollments.CourseId

 -- Misma ejecucion, distinta sentencia
 select * from enrollments
inner join teacher as t on t.Id = Enrollments.TeacherId
inner join students as s on s.id = Enrollments.StudentId
inner join Courses as c on c.CourseId = Enrollments.CourseId

 -- Ó también puede ser de la forma: (sin ponerle el nombre de la tabla mas es as 'letra')
 select * from enrollments
inner join teacher t on t.Id = Enrollments.TeacherId
inner join students s on s.id = Enrollments.StudentId
inner join Courses c on c.CourseId = Enrollments.CourseId

---------------------------------------------------------------

select * from Enrollments
t.FirstName [Teacher First Name]
inner join teacher t on t.Id = Enrollments.TeacherId
inner join students s on s.id = Enrollments.StudentId
inner join Courses c on c.CourseId = Enrollments.CourseId

-- ******* Script for SelectTopNRows command from SSMS ********/
select top (1000) [Id]
		,[TeacherId]
		,[StudentsId]
		,[CourseId]
		,[Grade]
	from [school].[dbo].[Enrollments]

-------------------------
select * from Enrollments e
inner join teacher t on e.TeacherId = t.id
----Only select records that have values that meet the condition.
----Records that do not meet the condition will not be returned in the result set.
select * from Enrollments e
left join teacher t on e.TeacherId = t.id
---- Will select all values in the 'right table', whether or not they meet the condition.
---- Be sure to structure the query correctly to bring back the records that you are interested in
select * from Enrollments e
right join Teacher t on e.TeacherId = t.id
---- Will select all records on either side regardless of there being a match
select * from Enrollments e
full join teacher t on e.TeacherId = t.Id


