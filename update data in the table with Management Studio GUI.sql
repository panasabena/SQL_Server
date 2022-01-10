-- Update all enrollment dates that are empty (null)
-- Update specific records using a condition
update students set enrollmentdate = '2019-05-01'
where enrollmentdate is null
-- Update all enrollment dates
-- Update multiple records (be careful), la siguiente linea lo que hace es actualizar
-- toda la columna con la nueva fecha asignada, sin tener en cuenta ninguna condición.
update students set enrollmentdate = '2019-06-10'
-- Update students with ids 7 & 11. Change first and last names
-- Update multiple columns
update Students set firstname = 'Tajee', lastname = 'McDermott'
where id = 7 
update Students set firstname = 'Rhoddy', lastname = 'Shawn'
where id = 11 