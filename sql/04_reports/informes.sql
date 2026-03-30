/*
AUTOR: 
ECHEVERRIA GOICOCHEA ERICK ISAAC 
ESTRADA ZACARIAS ALDO AXEL

DESCRIPCION: SCRIPT PARA GENERAR INFORMES DE LA BASE DE DATOS
FECHA: 28/11/2025
*/

Use PROYECTO
go

-- Informe  1. Listado de ingresos diarios, numero de socio, nombre completo, hora de ingreso y hora de
--salida. Este reporte podrá generarse por una fecha en específico o un rango de fechas.
create or alter procedure reporteIngresosUsuario
    @p_fechaInicio date,
    @p_fechaFin date
as
begin
    select s.numero_socio,
        (uw.nombre_pila+' '+ uw.apellido_paterno+' '+isnull(uw.apellido_materno,'')) nombre_socio,
        (case 
            when (e.hora_inicio is not null and a.hora_inicio is null) then e.hora_inicio
            when (e.hora_inicio is null and a.hora_inicio is not null) then a.hora_inicio
            when (e.hora_inicio is not null and a.hora_inicio is not null) 
                then (
                    case
                        when e.hora_inicio < a.hora_inicio then e.hora_inicio
                        else a.hora_inicio
                    end
                )
            else 'No ingreso'
        end
        ) as hora_ingreso,
        (case 
            when (e.hora_inicio is not null and a.hora_fin is null) then e.hora_fin
            when (e.hora_inicio is null and a.hora_fin is not null) then a.hora_fin
            when (e.hora_inicio is not null and a.hora_fin is not null) 
                then (
                    case
                        when e.hora_fin > a.hora_fin then e.hora_fin
                        else a.hora_fin
                    end
                )
            else 'No salida'
        end
        ) as hora_salida,
        count(*) numero_ingresos 
    from usuario.usuario_web uw
    join usuario.socio s on uw.usuario_id = s.usuario_id
    left join servicio.entrenamiento e on s.usuario_id = e.usuario_id
    left join operacion.alquiler a on s.usuario_id = a.usuario_id
    where (convert(date, a.fecha) between @p_fechaInicio and @p_fechaFin)
    group by s.numero_socio, uw.nombre_pila, uw.apellido_paterno, uw.apellido_materno,
        e.hora_inicio, e.hora_fin, a.hora_inicio, a.hora_fin;
end;
go

-- EXEC reporteIngresosUsuario @p_fechaInicio = '2025-05-01', @p_fechaFin = '2025-09-30';


-- Informe 2. Rating de las 5 actividades más solicitadas en un mes
create or alter procedure top5ActividadesMes
	@mes int,
	@anio int
as
begin
	select top 5 a.nombre as actividad, count(*) as cantidad_solicitudes
	from servicio.INSCRIPCION i
	join catalogo.HORARIO h
	on h.horario_id=i.horario_id
	join servicio.ACTIVIDAD a
	on a.horario_id=h.horario_id
	where month(i.fecha_hora)=@mes and year(i.fecha_hora)=@anio
	group by a.nombre
	order by cantidad_solicitudes desc
end;
go

--EXEC top5ActividadesMes 05, 2025;


-- Informe 3. Las 5 actividades más vendidas en un periodo de tiempo, semana, mes, rango de fechas
create or alter procedure top5ActividadesVendidasPorRangosFechas
	@fechaInicio date,
	@fechaFin date
as
begin 
	select top 5 sc.nombre as actividad, count(*) as total_vendidas
	from servicio.INSCRIPCION i
	join servicio.SERVICIO_CUOTA sc
	on sc.horario_id=i.horario_id
	where i.fecha_hora between @fechaInicio and @fechaFin
	group by sc.nombre
	order by total_vendidas desc
end;
go

-- EXEC top5ActividadesVendidasPorRangosFechas @fechaInicio='2025-01-03', @fechaFin = '2025-09-30';


-- Informe 4. Los 30 mejores socios (los que más compraron actividades)
create or alter procedure top30socios
as
begin 
	select top 30 s.numero_socio, concat(u.nombre_pila,' ',u.apellido_paterno,' ',u.apellido_materno) as nombreCompleto,
	count(*) as actividades_compradas
	from servicio.INSCRIPCION i
	join usuario.socio s on s.usuario_id=i.usuario_id
	join usuario.USUARIO_WEB u on u.usuario_id=s.usuario_id
	group by s.numero_socio, u.nombre_pila, u.apellido_paterno, u.apellido_materno
	order by actividades_compradas desc
end;
go

--EXEC top30socios;


-- Informe 5. Las 5 actividades menos solicitadas
create or alter procedure top5MenosSolicitadas
as
begin 
	select top 5 a.nombre, count(i.inscripcion_id) as total
	from servicio.ACTIVIDAD a
	left join catalogo.HORARIO h on h.horario_id=a.horario_id
	left join servicio.INSCRIPCION i on i.horario_id=h.horario_id
	group by a.nombre
	order by total asc
end;
go

--EXEC top5MenosSolicitadas;


-- Informe 6: Listado de los socios con su fecha de cumpleaños para poder enviarles una felicitación por su cumpleaños
create or alter procedure reporte_cumpleanios
as
begin 
    select s.numero_socio, CONCAT(u.nombre_pila, ' ', u.apellido_paterno, ' ', u.apellido_materno) as nombre_completo,
    case 
		when s.fecha_nacimiento is null then 'SIN FECHA REGISTRADA'
		else CONCAT(day(s.fecha_nacimiento), '/', month(s.fecha_nacimiento)) 
	end as fecha_cumpleanios
    from usuario.socio s 
    join usuario.usuario_web u on u.usuario_id=s.usuario_id
    order by month(s.fecha_nacimiento), day(s.fecha_nacimiento)
end;
go 

-- EXEC reporte_cumpleanios


-- Informe  7. Listado de las actividades con sus horarios y los profesores que las imparten
create or alter procedure actividadesHorariosProfesores
as
begin 
	select a.nombre as actividad, h.hora_inicio, h.hora_fin, CONCAT(u.nombre_pila, ' ', u.apellido_paterno, ' ', u.apellido_materno) as nombre_profesor
	from servicio.ACTIVIDAD a
	join catalogo.HORARIO h
	on h.horario_id=a.horario_id
	join servicio.EMPLEADO_ACTIVIDAD ea
	on ea.actividad_id=a.actividad_id
	join usuario.EMPLEADO e
	on e.usuario_id=ea.usuario_id
	join usuario.USUARIO_WEB u
	on u.usuario_id=e.usuario_id
	where e.maestro=1
end;
go

-- EXEC actividadesHorariosProfesores


-- Informe 8. Reporte mensual de las actividades de cuota; nombre de la actividad monto pagado al mes por actividad
create or alter procedure reporteCuotasMensuales
	@mes int,
	@anio int
as
begin 
	select sc.nombre as actividad, sc.costo, count(*) as cantidad_inscritos, (sc.costo*count(*)) as total_ingreso
	from servicio.INSCRIPCION si
	join servicio.SERVICIO_CUOTA sc
	on si.horario_id=sc.horario_id
	where month(si.fecha_hora)=@mes and year(si.fecha_hora)=@anio
	group by sc.nombre,sc.costo
end;
go

-- EXEC reporteCuotasMensuales


-- Informe 9. Reporte mensual de los nuevos ingresos de los socios, nombre, tipo de membresía, costo de membresía
create or alter procedure reporteNuevosSocios
	@mes int,
	@anio int
as 
begin
	select s.numero_socio, concat(u.nombre_pila,' ',u.apellido_paterno,' ',u.apellido_materno) as nombre_completo,
	s.tipo_membresia, p.cuota as costo_membresia, s.fecha_inicio
	from usuario.SOCIO S
	join usuario.USUARIO_WEB u 
	on u.usuario_id=s.usuario_id
	left join operacion.PAGO p 
	on p.usuario_id=s.usuario_id and month(p.fecha)=@mes and year(p.fecha)=@anio
	where month(p.fecha)=@mes and year(p.fecha)=@anio
	order by s.fecha_inicio
end;
go

--EXEC reporteNuevosSocios @mes, @anio;


-- Informe 10. Reporte mensual de los pagos de los socios; día, monto pagado
create or alter procedure reportePagosSocios
	@mes int,
	@anio int
as 
begin
	select p.usuario_id, s.numero_socio, CONCAT(u.nombre_pila,' ',u.apellido_paterno,' ',u.apellido_materno) as nombre,
	day(p.fecha) as dia_pago,p.cuota
	from operacion.PAGO p
	join usuario.SOCIO s 
	on s.usuario_id=p.usuario_id
	join usuario.USUARIO_WEB u 
	on u.usuario_id=s.usuario_id
	where month(p.fecha)=@mes and year(p.fecha)=@anio
end;
go

--EXEC reportePagosSocios @mes, @anio;
