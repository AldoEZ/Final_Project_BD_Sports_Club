/*
AUTOR: 
ECHEVERRIA GOICOCHEA ERICK ISAAC 

DESCRIPCION: SCRIPT PARA LA CREACION DE LAS TABLAS DEL MODELO RELACIONAL - PROYECTO 
FECHA: 28/11/2025
 */

use PROYECTO
go

create role administrador
go 
create role empleado
go 
create role socio
go


create login login_admin with password = N'admin123', default_database = [PROYECTO],  CHECK_EXPIRATION=OFF
go
create login login_empleado with password = N'empleado123', default_database = [PROYECTO],  CHECK_EXPIRATION=OFF
go
create login login_socio with password = N'socio123', default_database = [PROYECTO],  CHECK_EXPIRATION=OFF
go

create user usuarioAdmin for login login_admin
go
create user usuarioEmpleado for login login_empleado
go
create user usuarioSocio for login login_socio
go

alter role administrador add member usuarioAdmin
go
alter role empleado add member usuarioEmpleado
go
alter role socio add member usuarioSocio
go

-- permisos del rol administrador (tiene acceso completo)
grant select,insert,update,delete,execute on schema::catalogo to administrador
go
grant select,insert,update,delete,execute on schema::usuario to administrador
go
grant select,insert,update,delete,execute on schema::servicio to administrador
go
grant select,insert,update,delete,execute on schema::operacion to administrador
go

-- permisos del rol empleado ( puede consultar catalogo, usuario, tambien trabajar 
-- con servicios e instcripciones y puede gestionar operaciones del club)
grant select on schema::catalogo to empleado
go
grant select on schema::usuario to empleado
go
grant select,insert,update on schema::servicio to empleado
go
grant select,insert,update on schema::operacion to empleado
go

-- permisos del rol socio (puede consultar catalogos, info de servicios y usar procedimientos de servicios)
grant select on schema::catalogo to socio
go
grant select on schema::servicio to socio
go
grant execute on schema::servicio to socio
go

-- procedimiento para dar de alta un usuario
CREATE or ALTER PROCEDURE procAltaUsuario
		@usuario varchar(40),
		@contrasena varchar(40),
		@tipo_usuario char(1) -- se requiere saber que tipo de usuario se dara de alta (A,E,S)
as 
begin
	declare 
		@newUserCommand varchar(256),
		@newUserCommand2 varchar(256),
		@newUserCommand3 varchar(256)
	
	set @newUserCommand = 'create login ' + @usuario + ' with password = '''+ @contrasena+''',
	default_database = [PROYECTO], CHECK_EXPIRATION = OFF'
	
	execute (@newUserCommand)
	
	set @newUserCommand2 = CONCAT('CREATE USER "',@usuario,'" FOR LOGIN "',@usuario,'"')
	
	execute (@newUserCommand2)
	
	set @newUserCommand3 = case @tipo_usuario
		when 'A' then 'alter role administrador add member ' + @usuario
		when 'E' then 'alter role empleado add member ' + @usuario
		when 'S' then 'alter role socio add member ' + @usuario
		end
	
	execute(@newUserCommand3)
end
go
