-- Ways of filtering -- Conditions -- WHERE

-- Retrieve only students with the lastname 'Williams'
select lastname, firstname, dateofbirth
from school.dbo.students
where lastname = 'Student'
-- Esta forma de filtrar contenido es muy estricta, es decir que
-- solo nos va a traer lo que unicamente es igual a lo que le pedimos
-- y no si esa palabra está contenida en la palabra buscada.


-- Traemos a todos los estudiantes con la palabra Students
select lastname, firstname, dateofbirth
from school.dbo.students
where lastname like '%Student%' -- en vez de poner =, ponemos like si o si con el símbolo de porcentaje
								-- el símbolo de porcentaje indica que no importa lo que esté por delante y si lo ponemos de nuevo, no importa lo que esté por detrás del caracter

-- Traemos todos los estudiantes que contengan la letra i en su apellido
select lastname, firstname, dateofbirth
from school.dbo.students
where lastname like '%i%'
-- si no ponemos el simbolo de porcentaje al principio, le estamos pidiendo que traiga todo lo que empieza con i
-- y viceversa, si no le ponemos el simbolo de porcentaje al final, trae todo lo que termina con i

-- Otra cosa que se puede hacer, es traer columnas inexistentes, es decir, las creamos al mismo momento que las llamamos>
select lastname, firstname, dateofbirth, 1 as 'Random Number', 'hello students' as 'Saludo'
from school.dbo.students

-- Concatenar columnas
select lastname, firstname,firstname+' '+lastname as [Nombre completo], dateofbirth
from school.dbo.students

