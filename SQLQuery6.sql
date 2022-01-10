-- Now  we are going to use an entire statment
-- of comands, without putting in the left-blank-box
-- the database selected.
select top (1000) [id] -- le indicamos que seleccione los primeros 1000 registros de la columna id
	,[lastname]
	,[firstname]
	,[enrollmentdate]
from [school].[dbo].[Students] -- en esta parte le estamos indicando de manera completa que seleccione la base de datos school


