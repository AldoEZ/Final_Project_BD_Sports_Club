/*
AUTOR: 
ESTRADA ZACARIAS ALDO AXEL
QUEZADA OLIVARES EMIR

DESCRIPCION: SCRIPT PARA LA CREACION DE DISPARADORES Y VISTAS - PROYECTO 
FECHA: 25/11/2025
*/

USE PROYECTO
GO

-- ======================================================
--                          VISTAS
-- ======================================================

/*
DESCRIPCION: vista que da id del usuario, su nombre, su apellido, numero de socio, 
dia de la semana, nombre y descripcion del ejercicio, agregando los ejercicios que 
aun no son asignados a un socio
*/
create or alter view usuario.vis_entrenamientos_socio as
select uw.usuario_id, uw.nombre_pila nombre_socio, uw.apellido_paterno, s.numero_socio, 
    ds.nombre_dia, ej.nombre nombre_ejercicio, ej.descripcion
from usuario.usuario_web uw
right join usuario.socio s on uw.usuario_id = s.usuario_id
right join servicio.entrenamiento e on s.usuario_id = e.usuario_id
right join catalogo.dia_semana ds on e.dia_semana_id = ds.dia_semana_id
right join servicio.ejercicio_entrenamiento ee on ee.entrenamiento_id = e.entrenamiento_id
right join catalogo.ejercicio ej on ee.ejercicio_id = ej.ejercicio_id;
go

/*
DESCRIPCION: vista que muestra nomnbre de un servicio de cuota, su descripcion, costo,
nombre de la instalacion, capacidad, lugar, hora de inicio y fin, y dia de la semana
agregando los servicios de cuota que no estan asignados a un dia de la semana
*/
create or alter view servicio.vis_datos_servicio_cuota as
select sc.nombre nombre_servicio_cuota, sc.descripcion, sc.costo, i.nombre nombre_instalacion, 
    i.capacidad, h.lugar, h.hora_inicio, h.hora_fin, ds.nombre_dia
from servicio.servicio_cuota sc
left join catalogo.instalacion i on sc.instalacion_id = i.instalacion_id
left join catalogo.horario h on sc.horario_id =  h.horario_id
left join catalogo.horario_dia_semana hd on hd.horario_id = h.horario_id
left join catalogo.dia_semana ds on hd.dia_semana_id = ds.dia_semana_id;
go

/*
DESCRIPCION: vista que muestra la instalacion, su capacidad, el material asociado y 
el total de unidades del material con las que cuenta
*/
create or alter view operacion.vis_instalacion_material as
select i.instalacion_id, i.nombre nombre_instalacion, i.capacidad, m.nombre nombre_material, m.total_unidades
from catalogo.instalacion i
join operacion.alquiler_instalacion ai on i.instalacion_id = ai.instalacion_id
join operacion.material m on ai. alquiler_instalacion_id = m.alquiler_instalacion_id;
go


-- ======================================================
--               PROCEDIMIENTOS ALMACENADOS
-- ======================================================

/*
DESCRIPCION: procedimiento para registrar la compra de un socio de un servicio de cuota
con parametro de entrada el id del usuario, el id del horario y el metodo de pago
*/
create or alter procedure servicio.registraCompraServicioCuota
    @p_usuario_id     int,
    @p_horario_id     int,
    @p_metodo_pago    char(1),
    @p_costo          money output
as
begin
    insert into servicio.INSCRIPCION (fecha_hora, metodo_pago, estado_inscripcion, horario_id, usuario_id)
        values (getdate(), @p_metodo_pago, 'ACTIVA', @p_horario_id, @p_usuario_id);
    
    select @p_costo = costo
    from servicio.SERVICIO_CUOTA
    where horario_id = @p_horario_id;
end;

/*
DESCRIPCION:  procedimiento para registrar la inscripcion de un socio a una actividad
con parametro de entrada el id del usuario y el id del horario
*/
create or alter procedure servicio.registraCompraActividad
    @p_usuario_id     numeric(10,0),
    @p_horario_id     numeric(10,0)
as
begin
    insert into servicio.INSCRIPCION (fecha_hora, estado_inscripcion, horario_id, usuario_id)
        values (getdate(), 'ACTIVA', @p_horario_id, @p_usuario_id);
end;

/*
DESCRIPCION: procedimiento para registrar la dieta de un socio
con parametro de entrada el id del usuario, nombre del plan, fecha de creacion y
el id del platillo inicial
*/
create or alter procedure servicio.registraDietaSocio
    @p_usuario_id           numeric(10,0),
    @p_nombre_plan          varchar(40),
    @p_fecha_creacion       date,
    @p_platillo_inicial     int
as
begin
    insert into servicio.dieta (usuario_id, nombre_plan, fecha_creacion)
        values (@p_usuario_id, @p_nombre_plan, @p_fecha_creacion);
    
    declare @p_dieta_id numeric(10,0) = scope_identity();
    declare @p_contador int = 1;
    
    while @p_contador <= 7
    begin
        insert into servicio.platillo_dieta (dieta_id, platillo_id, dia_semana_id)
            values (
                @p_dieta_id,
                @p_platillo_inicial + (@p_contador - 1),
                @p_contador
            );
        set @p_contador = @p_contador + 1;
    end
end;

/*
DESCRIPCION: procedimiento para registrar el entrenamiento de un socio
con parametro de entrada el id del usuario, hora de inicio, hora de fin y dia de la semana
*/
create or alter procedure servicio.registraEntrenamientoSocio
    @p_usuario_id       numeric(10,0),
    @p_hora_inicio      time(7),
    @p_hora_fin         time(7),
    @p_dia_semana       numeric(1,0)
as
begin
    insert into servicio.entrenamiento (usuario_id, dia_semana_id, hora_inicio, hora_fin)
        values (@p_usuario_id, @p_dia_semana, @p_hora_inicio, @p_hora_fin);
    
    declare @p_entrenamiento_id   numeric(6,0) = scope_identity();
    declare @p_contador           int = 1;
    
    while @p_contador <= 7
    begin
        insert into servicio.ejercicio_entrenamiento(entrenamiento_id, ejercicio_id)
        values (@p_entrenamiento_id, @p_contador);
        set @p_contador = @p_contador + 2;
    end
end;

/*
DESCRIPCION: procedimiento para registrar una nueva actividad
con parametro de entrada el nombre, descripcion, edad requerida,
id de la instalacion y id del horario
*/
create or alter procedure servicio.registraActividad
    @p_nombre            varchar(40),
    @p_descripcion       varchar(150),
    @p_edad_requerida    numeric(2,0),
    @p_instalacion_id    numeric(10,0),
    @p_horario_id        numeric(10,0)
as
begin
    insert into servicio.actividad (nombre, descripcion, edad_requerida, instalacion_id, horario_id)
    values (@p_nombre, @p_descripcion, @p_edad_requerida, @p_instalacion_id, @p_horario_id);
end;

/*
DESCRIPCION: procedimiento para registrar un nuevo servicio de cuota
con parametro de entrada el nombre, edad requerida, descripcion,
costo, id de la instalacion y id del horario
*/
create or alter procedure servicio.registraServicioCuota
    @p_nombre            varchar(40),
    @p_edad_requerida    numeric(2,0),
    @p_descripcion       varchar(150),
    @p_costo             money,
    @p_instalacion_id    numeric(10,0),
    @p_horario_id        numeric(10,0)
as
begin
    insert into servicio.servicio_cuota (nombre, edad_requerida, descripcion, costo, instalacion_id, horario_id)
    values (@p_nombre, @p_edad_requerida, @p_descripcion, @p_costo, @p_instalacion_id, @p_horario_id);
end;

/*
DESCRIPCION: procedimiento para buscar socios por nombre y apellidos
con parametros de entrada nombre, apellido paterno y apellido materno,
si algun parametro es nulo, no se toma en cuenta en la busqueda
*/
create or alter procedure usuario.busquedaSocio
    @p_nombre_pila       varchar(40) = null,
    @p_apellido_paterno  varchar(40) = null,
    @p_apellido_materno  varchar(40) = null
as
begin
    select s.numero_socio, concat(uw.nombre_pila, ' ', uw.apellido_paterno, ' ', uw.apellido_materno) as nombre_completo,
    s.fecha_nacimiento, s.meses_adeudados, s.estado_socio
    from usuario.socio s
    join usuario.usuario_web uw on uw.usuario_id = s.usuario_id
    where (uw.nombre_pila = @p_nombre_pila or @p_nombre_pila is null)
    and (uw.apellido_paterno = @p_apellido_paterno or @p_apellido_paterno is null)
    and (uw.apellido_materno = @p_apellido_materno or @p_apellido_materno is null);
end;


-- ======================================================
--                        TRIGGERS
-- ======================================================

/*
DESCRIPCION: Trigger encargado de verificar que un empleado
cuente con al menos 5 anios de antiguedad para que pueda
ser acreedor a un abono.
*/
create or alter trigger usuario.tr_empleado
on usuario.EMPLEADO 
for update
as
begin 
    if update(abono)
        begin
            if exists(select 1 from inserted 
                      where DATEADD(year, 5, fecha_ingreso) > getdate())
                begin
                    raiserror ('No es posible asignarle un abono a empleados con menos
                                de 5 anios de antiguedad', 16, 1);
                    rollback transaction;
                    return;
                end
        end 
end;

/*
DESCRIPCION: Trigger encargado de verificar que se
cumpla el formato correcto para un correo electronico.
Esto se verifica al momento de registrar un correo
nuevo, o al momento de actualizar/modificar uno
ya existente.
*/
create or alter trigger usuario.tr_correo
on usuario.CORREO
after update, insert
as
begin
    if exists (select 1 from inserted
               where correo NOT LIKE '%@gmail.com'
               and correo NOT LIKE '%@hotmail.com'
               and correo NOT LIKE '%@club.com')
        begin
            raiserror('El formato del correo es invalido', 16, 1);
            rollback transaction;
            return;
        end
end;

/*
DESCRIPCION: Trigger encargado de manejar las operaciones insert, delete y update.
En el caso de un insert, el trigger validara primero que los pagos realizados 
cumplan con la cuota establecida, de no ser asi, se rechaza la insercion. Si se cumple
la validacion, entonces se comenzaran a actualizar los meses de adeudo del socio y
en caso de llegar a 0 meses de adeudo, el estado del socio cambia a "CORRIENTE".
Para el delete, sucede algo parecido. Cada que se elimina un pago aumentan los meses
de adeudo y el estado del socio cambia a "ADEUDO".
Finalmente, para el update solo se verifica que la cuota pagada por el socio sea
exactamente de 500$.
*/
create or alter trigger operacion.tr_pago
on operacion.pago
after insert, delete, update
as
begin
    -- Caso para el insert
    if exists(select 1 from inserted) and not exists(select 1 from deleted)
        begin    
            if exists(select 1 from inserted
                      where cuota != 500)
                begin
                    raiserror('La cuota a pagar no es la requerida.', 16, 1);
                    rollback transaction;
                    return;
                end
            declare cur cursor for
            select usuario_id
            from inserted;
            
            declare @usuario int;
            
            open cur;
            
            fetch next from cur into @usuario;
            
            while @@fetch_status = 0
            begin
                if (select meses_adeudados 
                    from usuario.SOCIO
                    where usuario_id = @usuario) > 0
                    begin
                        update usuario.SOCIO
                        set meses_adeudados = meses_adeudados - 1
                        where usuario_id = @usuario
                        
						if (select meses_adeudados 
							from usuario.SOCIO
							where usuario_id = @usuario) = 0
							begin 
								update usuario.SOCIO 
								set estado_socio = 'C'
								where usuario_id = @usuario
							end
                    end
                fetch next from cur into @usuario;
            end
            
            close cur;
            deallocate cur;
        end
    -- Caso para el delete
    else if not exists(select 1 from inserted) and exists(select 1 from deleted)
        begin
            declare @usuario2 int;
            
            declare cur cursor for
            select usuario_id
            from deleted;
            
            open cur;
            
            fetch next from cur into @usuario2;
            
            while @@fetch_status = 0
            begin
                
                update usuario.SOCIO
                set meses_adeudados = meses_adeudados + 1,
                estado_socio = 'A'
                where usuario_id = @usuario2
                
                fetch next from cur into @usuario2
            end
            close cur;
            deallocate cur;
		end
    -- Caso para el update
    else 
        begin
            if exists(select 1 from inserted 
                      where cuota != 500)
            begin   
                raiserror('La cuota a pagar no es la requerida.', 16, 1);
                rollback transaction;
                return;
            end
        end
end;



-- ======================================================
--                     FUNCIONES
-- ======================================================

/*
DESCRIPCION: Esta funcion calcula la edad en anios completos 
a partir de la fecha de nacimiento recibida. Recibe un unico parametro 
@fecha_nacimiento de tipo DATE y devuelve un int con los anioos cumplidos
al dia de hoy o fecha actual, tomando GETDATE() como fecha de referencia. 
La logica resta el anio de nacimiento del anio actual y corrige restando uno 
cuando el cumpleanios todavia no ha ocurrido en el anio en curso. 
Si se le pasa NULL propagara NULL como resultado.
*/
create or alter function usuario.calcularEdad(@fecha_nacimiento DATE)
returns int
as
begin
    return (year(getdate()) - year(@fecha_nacimiento)
            - case 
                when month(@fecha_nacimiento) < month(getdate()) then 0
                when month(@fecha_nacimiento) = month(getdate()) 
                and day(@fecha_nacimiento) <= day(getdate()) then 0
                else 1 end);
end;

/*
DESCRIPCION: Funcion escalar diseniada para calcular cuantos dias faltan hasta 
el siguiente vencimiento de pago, partiendo de la fecha del ultimo pago. Recibe 
@ultimaFechaPago (DATE) y devuelve un int con el numero de diaas entre hoy (GETDATE()) 
y la fecha del proximo pago, que se obtiene anadiendo un mes a la fecha del ultimo pago. 
Si la diferencia es negativa (es decir, la fecha de vencimiento ya paso), la funcion 
normaliza el resultado a cero antes de devolverlo, garantizando que nunca retorne valores negativos.
*/

create or alter function usuario.diasRestantesPago(@ultimaFechaPago date)
returns int
as 
begin 
	declare @proximoPago date
	declare @diasRestantes int 
    
	set @proximoPago=DATEADD(month,1,@ultimaFechaPago)
	set @diasRestantes=DATEDIFF(day,getdate(),@proximoPago)
    
	if @diasRestantes < 0
		set @diasRestantes=0
    
	return @diasRestantes
end
GO
