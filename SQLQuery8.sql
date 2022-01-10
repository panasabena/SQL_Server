-- Select Course with the number of credits greater than 2
select * from school.dbo.Courses
where NumberOfCredits = 3

-- Select Courses with the number of credits 3 and less
select * from school.dbo.Courses
where NumberOfCredits <= 3

select * from school.dbo.Courses