-- Delete student with id 1, borra de la tabla de students, de la columna id, el valor = 1
delete from Students where id = 1

-- Delete student named Tajee McDermott
delete from Students where firstname = 'Tajee' and lastname = 'McDermott'

-- Delete all students with names containing the word 'student'
delete from students where lastname like '%student%' or firstname like '%student%'

-- The following line, when it is executed, it deletes all elements of the table
-- delete from Students (without any condition)