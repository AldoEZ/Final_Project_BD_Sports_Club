/*
AUTOR:
ALDO AXEL ESTRADA ZACARIAS

DESCRIPCION:
SCRIPT PARA LA CARGA INICIAL DE DATOS DEL PROYECTO
Fecha: 24/11/2025
*/

USE PROYECTO
GO

-- =============================================
-- 1. INSERCIONES EN CATALOGOS/INDEPENDIENTES
-- =============================================

-- Inserciones para catalogo.ALCALDIA
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Álvaro Obregón');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Azcapotzalco');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Benito Juárez');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Coyoacán');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Cuauhtémoc');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Gustavo A. Madero');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Iztapalapa');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Miguel Hidalgo');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Tlalpan');
INSERT INTO catalogo.ALCALDIA(nombre_alcaldia)
    VALUES ('Xochimilco');
GO

-- Inserciones para catalogo.COLONIA
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Del Valle');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Narvarte');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Roma Norte');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Roma Sur');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Condesa');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Nápoles');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Portales');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Santa María la Ribera');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('San Ángel');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Centro Histórico');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Pedregal');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Lindavista');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Obrero Popular');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Mixcoac');
INSERT INTO catalogo.COLONIA(nombre_colonia)
    VALUES ('Tlatelolco');
GO

-- Inserciones para catalogo.SEXO
INSERT INTO catalogo.SEXO(nombre_sexo)
    VALUES ('Femenino');
INSERT INTO catalogo.SEXO(nombre_sexo)
    VALUES ('Masculino');
INSERT INTO catalogo.SEXO(nombre_sexo)
    VALUES ('Otro');
GO

-- Inserciones para catalogo.DIA_SEMANA
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Lunes');
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Martes');
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Miércoles');
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Jueves');
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Viernes');
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Sábado');
INSERT INTO catalogo.DIA_SEMANA(nombre_dia)
    VALUES ('Domingo');
GO

-- Inserciones para catalogo.ESTADO_ALQUILER
INSERT INTO catalogo.ESTADO_ALQUILER(estado)
    VALUES ('Reservado');
INSERT INTO catalogo.ESTADO_ALQUILER(estado)
    VALUES ('Confirmado');
INSERT INTO catalogo.ESTADO_ALQUILER(estado)
    VALUES ('En uso');
INSERT INTO catalogo.ESTADO_ALQUILER(estado)
    VALUES ('Finalizado');
GO

-- Inserciones para catalogo.INSTALACION
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (40, 'Cancha fútbol 7 techada');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (60, 'Cancha fútbol rápido exterior');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (20, 'Cancha baloncesto');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (10, 'Sala de spinning');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (25, 'Gimnasio de pesas');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (30, 'Alberca semiolímpica');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (12, 'Salón de yoga');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (15, 'Salón de pilates');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (8, 'Zona de crossfit');
INSERT INTO catalogo.INSTALACION(capacidad, nombre)
    VALUES (16, 'Pista de atletismo interior');
GO

-- Inserciones para catalogo.EJERCICIO
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Sentadilla libre','Sentadillas con barra en rack.','Fuerza','Piernas',4,10);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Press de banca','Press de banca plano con barra.','Fuerza','Pecho',4,8);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Peso muerto','Peso muerto convencional con barra.','Fuerza','Espalda',4,8);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Dominadas','Dominadas en barra fija asistidas o libres.','Fuerza','Espalda',3,8);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Curl de bíceps','Curl de bíceps con mancuernas alternadas.','Fuerza','Brazos',3,12);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Press militar','Press militar de pie con barra.','Fuerza','Hombros',4,8);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Plancha abdominal','Plancha isométrica en colchoneta.','Core','Abdomen',3,30);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Crunch abdominal','Crunch tradicional en colchoneta.','Core','Abdomen',3,15);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Burpees','Burpees completos a ritmo moderado.','Cardio','Cuerpo completo',3,12);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Jumping jacks','Saltos de tijera continuos.','Cardio','Cuerpo completo',3,20);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Remo con mancuerna','Remo a una mano con mancuerna.','Fuerza','Espalda',3,12);
INSERT INTO catalogo.EJERCICIO(nombre, descripcion, tipo_ejercicio, zona_corporal,numero_series, repeticiones)
    VALUES ('Zancadas','Zancadas alternadas con mancuernas.','Fuerza','Piernas',3,12);
GO

-- Inserciones para catalogo.PLATILLO
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Omelette de claras','Omelette de claras con espinaca y jitomate.','Desayuno',250);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Avena con fruta','Avena cocida en agua con plátano y nuez.','Desayuno',300);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Pechuga asada','Pechuga de pollo asada con verduras al vapor.','Comida',420);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Ensalada de atún','Ensalada de atún con verduras frescas y aderezo ligero.','Comida',350);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Yogur con granola','Yogur natural bajo en grasa con granola y frutos rojos.','Colación',200);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Wrap de pollo','Tortilla integral rellena de pollo y vegetales.','Comida',NULL);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Sandwich integral pavo','Sandwich integral con pechuga de pavo y lechuga.','Cena',NULL);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Tazón de frutas','Mezcla de frutas de temporada.','Colación',NULL);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Crema de verduras','Crema ligera de verduras mixtas.','Cena',NULL);
INSERT INTO catalogo.PLATILLO(nombre, descripcion, horario, calorias_por_racion)
    VALUES ('Hummus con verduras','Hummus de garbanzo con bastones de zanahoria y pepino.','Colación',NULL);
GO

-- Inserciones para catalogo.HORARIO (3 requeridos + 10 extra = 13)
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Cancha fútbol 7 techada', '07:30:00', '06:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Cancha fútbol rápido exterior', '09:00:00', '07:30:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Alberca semiolímpica', '08:30:00', '07:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Gimnasio de pesas', '10:00:00', '08:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Salón de yoga', '09:30:00', '08:30:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Salón de pilates', '11:00:00', '10:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Sala de spinning', '19:00:00', '18:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Zona de crossfit', '20:30:00', '19:30:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Pista de atletismo interior', '08:30:00', '06:30:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Cancha baloncesto', '21:00:00', '19:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Cancha fútbol 7 techada', '22:00:00', '20:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Alberca semiolímpica', '14:00:00', '12:00:00');
INSERT INTO catalogo.HORARIO(lugar, hora_fin, hora_inicio)
    VALUES ('Salón de yoga', '20:00:00', '19:00:00');
GO

-- Inserciones para catalogo.TIPO_PARENTESCO
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Padre');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Madre');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Hijo');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Hija');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Hermano');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Hermana');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Abuelo');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Abuela');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Tío');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Tía');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Primo');
INSERT INTO catalogo.TIPO_PARENTESCO(descripcion)
    VALUES ('Prima');
GO

-- Inserciones para catalogo.PUESTO
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Administrador general');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Recepcionista');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Entrenador de pesas');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Entrenador de natación');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Instructor de yoga');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Nutriólogo');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Personal de limpieza');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Coordinador de actividades');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Cajero');
INSERT INTO catalogo.PUESTO(puesto)
    VALUES ('Entrenador de fútbol');
GO

-- =============================================
-- 2. TABLAS CON DEPENDENCIAS 
-- =============================================

-- Inserciones para usuario.DIRECCION
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (1,1,'Av Universidad',120);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (2,2,'Calle Reforma',350);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (3,3,'Calle Insurgentes Sur',815);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (4,4,'Calle Division del Norte',432);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (5,5,'Calle Amsterdam',101);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (6,6,'Calle Patriotismo',289);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (7,7,'Calle Miguel Laurent',77);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (8,8,'Calle Ribera de San Cosme',540);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (9,9,'Calle San Angel Inn',36);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (10,10,'Calle 20 de Noviembre',15);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (1,11,'Calle Cerro del Agua',214);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (2,12,'Calle Montevideo',98);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (3,13,'Calle Azcapotzalco',410);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (4,14,'Calle Mixcoac',305);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (5,15,'Calle Tlatelolco',612);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (6,3,'Calle Manzanos',54);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (7,5,'Calle Cipreses',221);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (8,7,'Calle Olivos',73);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (9,9,'Calle Jacarandas',410);
INSERT INTO usuario.DIRECCION(alcaldia_id,colonia_id,calle,numero) 
    VALUES (10,11,'Calle Palmas',88);
GO

-- Inserciones para servicio.ACTIVIDAD (20 actividades: 10 requeridas + 10 extra)
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Futbol 7 principiantes','Entrenamiento basico de futbol 7 para principiantes.',12,'Deporte en equipo',1,1);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Futbol 7 intermedios','Entrenamiento de futbol 7 nivel intermedio.',15,'Deporte en equipo',1,11);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Futbol 7 avanzado','Entrenamiento de alto rendimiento en futbol 7.',18,'Deporte en equipo',1,2);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Futbol rapido mixto','Partidos recreativos de futbol rapido mixto.',16,'Deporte en equipo',2,10);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Baloncesto recreativo','Sesion recreativa de baloncesto para todas las edades.',14,'Deporte en equipo',3,10);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Baloncesto competitivo','Entrenamiento competitivo de baloncesto.',17,'Deporte en equipo',3,9);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Spinning matutino','Clase de ciclismo indoor de intensidad moderada.',16,'Clase grupal',4,7);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Spinning nocturno','Clase de ciclismo indoor de alta intensidad.',18,'Clase grupal',4,7);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Yoga relajacion','Sesion de yoga enfocada en respiracion y estiramientos.',12,'Clase grupal',7,5);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Yoga intermedio','Clase de yoga con posturas de nivel intermedio.',15,'Clase grupal',7,13);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Pilates basico','Clase de pilates para principiantes.',14,'Clase grupal',8,6);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Pilates avanzado','Clase de pilates para usuarios avanzados.',18,'Clase grupal',8,6);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Entrenamiento funcional','Circuito funcional para acondicionamiento general.',16,'Entrenamiento funcional',9,8);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Crossfit basico','Entrenamiento de crossfit de nivel inicial.',18,'Entrenamiento funcional',9,8);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Crossfit avanzado','Entrenamiento de crossfit de alta intensidad.',21,'Entrenamiento funcional',9,4);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Natacion libre','Espacio de natacion libre con carriles asignados.',10,'Acuatico',6,3);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Natacion principiantes','Curso de natacion para principiantes.',8,'Acuatico',6,12);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Natacion adultos mayores','Clase suave de natacion para adultos mayores.',55,'Acuatico',6,12);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Atletismo velocidad','Entrenamiento de velocidad y salidas en pista.',14,'Entrenamiento individual',10,9);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) 
    VALUES ('Atletismo resistencia','Entrenamiento de resistencia y fondos en pista.',16,'Entrenamiento individual',10,9);
GO

-- Inserciones para servicio.SERVICIO_CUOTA
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Membresia gym mensual','16','Acceso ilimitado al gimnasio de pesas durante un mes.',650.00,4,5);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Membresia gym anual','18','Acceso ilimitado al gimnasio de pesas durante un año.',6500.00,4,5);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Paquete natacion infantil','8','Curso de natacion para menores con 3 clases por semana.',900.00,3,6);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Paquete natacion adultos','18','Curso de natacion para adultos nivel basico e intermedio.',1100.00,12,6);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Plan crossfit 3 dias','18','Acceso a clases de crossfit tres dias por semana.',1200.00,8,9);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Plan crossfit ilimitado','21','Acceso ilimitado a clases de crossfit.',1800.00,8,9);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Yoga bienestar mensual','12','Clases de yoga relajacion e intermedio durante un mes.',750.00,5,7);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Spinning nocturno mensual','16','Acceso a clases de spinning nocturno durante un mes.',800.00,7,4);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Liga futbol 7','15','Inscripcion a liga interna de futbol 7 por temporada.',950.00,1,1);
INSERT INTO servicio.SERVICIO_CUOTA(nombre,edad_requerida,descripcion,costo,horario_id,instalacion_id) 
    VALUES ('Escuela baloncesto juvenil','13','Programa formativo de baloncesto para jovenes.',880.00,10,3);
GO

-- =============================================
-- 3. TABLAS DE USUARIOS Y JERARQUIA
-- =============================================

-- Inserciones para usuario.USUARIO_WEB (30 socios + 20 empleados)
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio01','pass01','Carlos','Ramirez','Lopez',1);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio02','pass02','Maria','Gonzalez','Perez',2);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio03','pass03','Luis','Hernandez','Ruiz',3);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio04','pass04','Ana','Martinez','Ortega',4);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio05','pass05','Jorge','Sanchez','Cruz',5);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio06','pass06','Elena','Diaz','Torres',6);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio07','pass07','Ricardo','Morales','Silva',7);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio08','pass08','Sofia','Vargas','Mora',8);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio09','pass09','Miguel','Lopez','Navarro',9);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio10','pass10','Lucia','Castillo','Flores',10);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio11','pass11','Pedro','Reyes','Aguilar',11);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio12','pass12','Fernanda','Ramirez','Soto',12);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio13','pass13','Andres','Cano','Beltran',13);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio14','pass14','Valeria','Cordero','Ibarra',14);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio15','pass15','Hector','Pineda','Rosales',15);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio16','pass16','Julio','Zavala',NULL,16);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio17','pass17','Paola','Loera',NULL,17);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio18','pass18','Diego','Corona',NULL,18);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio19','pass19','Karen','Ibanez',NULL,19);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio20','pass20','Rodrigo','Rios',NULL,20);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio21','pass21','Adriana','Salas',NULL,1);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio22','pass22','Gabriel','Nunez',NULL,2);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio23','pass23','Monica','Pena',NULL,3);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio24','pass24','Daniel','Trejo',NULL,4);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio25','pass25','Alejandra','Vega',NULL,5);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio26','pass26','Oscar','Campos',NULL,6);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio27','pass27','Liliana','Bravo',NULL,7);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio28','pass28','Ruben','Mejia',NULL,8);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio29','pass29','Patricia','Solano',NULL,9);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('S','socio30','pass30','Ivan','Mendoza',NULL,10);

INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado01','emp01','Raul','Gutierrez','Nava',11);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado02','emp02','Martha','Lopez','Pelcastre',12);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado03','emp03','Alberto','Serrano','Quintero',13);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado04','emp04','Beatriz','Palacios','Delgado',14);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado05','emp05','Sergio','Oliva','Torres',15);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado06','emp06','Claudia','Mendez','Robles',16);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado07','emp07','Enrique','Rangel','Sosa',17);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado08','emp08','Teresa','Ortega','Galvan',18);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado09','emp09','Mario','Padilla','Cortez',19);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado10','emp10','Laura','Salazar','Montes',20);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado11','emp11','Gustavo','Blanco',NULL,1);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado12','emp12','Silvia','Campos',NULL,2);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado13','emp13','Javier','Cisneros',NULL,3);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado14','emp14','Lorena','Acosta',NULL,4);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado15','emp15','Felipe','Miranda',NULL,5);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado16','emp16','Cecilia','Noriega',NULL,6);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado17','emp17','Rafael','Sandoval',NULL,7);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado18','emp18','Nadia','Chavez',NULL,8);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado19','emp19','Hilda','Guerra',NULL,9);
INSERT INTO usuario.USUARIO_WEB(tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
    VALUES ('E','empleado20','emp20','Victor','Esquivel',NULL,10);
GO

-- Inserciones para usuario.SOCIO (30 socios, mitad con fecha_nacimiento NULL)
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (1,1,172,75,'2000-01-10','2025-01-05 10:00:00',0x01,0,'A',100000000001,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (2,2,165,62,'1998-02-12','2025-01-06 09:30:00',0x01,0,'A',100000000002,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (3,1,178,80,'1999-03-08','2025-02-03 18:00:00',0x01,0,'A',100000000003,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (4,2,160,58,'2001-04-05','2025-02-10 07:45:00',0x01,0,'A',100000000004,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (5,1,175,77,'1992-05-16','2025-03-01 08:30:00',0x01,0,'A',100000000005,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (6,2,168,65,'2002-06-03','2025-03-15 19:00:00',0x01,0,'A',100000000006,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (7,1,182,83,'1980-07-21','2025-04-01 17:15:00',0x01,0,'A',100000000007,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (8,2,164,60,'1968-08-09','2025-04-20 11:00:00',0x01,0,'A',100000000008,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (9,1,176,79,'1982-09-14','2025-05-05 09:15:00',0x01,0,'A',100000000009,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (10,2,170,68,'2005-10-19','2025-05-25 18:30:00',0x01,0,'A',100000000010,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (11,1,173,72,'2010-11-07','2025-06-02 08:00:00',0x01,1,'A',100000000011,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (12,2,166,63,'1975-12-02','2025-06-18 19:15:00',0x01,1,'A',100000000012,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (13,1,180,82,'2005-03-25','2025-07-04 07:30:00',0x01,1,'A',100000000013,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (14,2,162,59,'2000-06-18','2025-07-20 18:45:00',0x01,1,'A',100000000014,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (15,1,177,78,'2004-09-29','2025-08-01 09:00:00',0x01,1,'A',100000000015,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (16,2,169,66,NULL,'2025-08-15 20:00:00',0x01,2,'C',100000000016,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (17,1,181,84,NULL,'2025-09-02 10:30:00',0x01,2,'C',100000000017,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (18,2,167,64,NULL,'2025-09-18 18:00:00',0x01,2,'C',100000000018,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (19,3,174,76,NULL,'2025-10-03 07:00:00',0x01,2,'C',100000000019,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (20,1,179,81,NULL,'2025-10-21 19:30:00',0x01,2,'C',100000000020,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (21,2,163,61,NULL,'2025-11-05 08:45:00',0x01,3,'C',100000000021,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (22,1,171,73,NULL,'2025-11-22 17:30:00',0x01,3,'C',100000000022,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (23,2,168,67,NULL,'2025-12-01 09:30:00',0x01,3,'C',100000000023,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (24,3,176,79,NULL,'2025-12-10 18:15:00',0x01,3,'C',100000000024,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (25,1,170,70,NULL,'2025-01-12 08:10:00',0x01,3,'C',100000000025,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (26,2,166,62,NULL,'2025-02-14 19:40:00',0x01,3,'C',100000000026,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (27,3,178,82,NULL,'2025-03-19 07:20:00',0x01,3,'C',100000000027,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (28,1,174,74,NULL,'2025-04-22 18:55:00',0x01,3,'C',100000000028,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (29,2,169,69,NULL,'2025-05-17 09:05:00',0x01,3,'C',100000000029,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
    VALUES (30,3,181,85,NULL,'2025-06-21 17:50:00',0x01,3,'C',100000000030,'E');
GO

-- Inserciones para usuario.EMPLEADO (20 empleados, 5 maestros)
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (31,80000000001,'2025-01-15','2025-02-01',15000.00,0,30,'raul.gutierrez@club.com',0x01,3);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (32,80000000002,'2025-02-20','2025-03-01',18500.00,1,40,'martha.lopez@club.com',0x01,6);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (33,80000000003,'2025-03-05','2025-04-01',16000.00,0,28,'alberto.serrano@club.com',0x01,4);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (34,80000000004,'2025-04-18','2025-05-01',17000.00,0,35,'beatriz.palacios@club.com',0x01,5);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (35,80000000005,'2025-05-10','2025-06-01',15500.00,1,32,'sergio.oliva@club.com',0x01,10);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (36,80000000006,'2025-06-11','2025-07-01',14000.00,0,NULL,'claudia.mendez@club.com',0x00,2);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (37,80000000007,'2025-07-08','2025-07-15',13500.00,0,NULL,'enrique.rangel@club.com',0x00,8);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (38,80000000008,'2025-08-03','2025-08-20',13000.00,0,NULL,'teresa.ortega@club.com',0x00,1);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (39,80000000009,'2025-09-14','2025-09-30',14500.00,1,NULL,'mario.padilla@club.com',0x00,9);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (40,80000000010,'2025-10-22','2025-11-01',13800.00,0,NULL,'laura.salazar@club.com',0x00,7);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (41,80000000011,'2025-01-09','2025-02-10',14200.00,0,29,'gustavo.blanco@club.com',0x00,2);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (42,80000000012,'2025-02-17','2025-03-12',14800.00,1,33,'silvia.campos@club.com',0x00,8);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (43,80000000013,'2025-03-22','2025-04-15',15200.00,0,31,'javier.cisneros@club.com',0x00,1);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (44,80000000014,'2025-04-04','2025-05-18',14900.00,0,27,'lorena.acosta@club.com',0x00,9);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (45,80000000015,'2025-05-28','2025-06-20',15100.00,1,36,'felipe.miranda@club.com',0x00,7);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (46,80000000016,'2025-06-06','2025-07-25',13900.00,0,NULL,'cecilia.noriega@club.com',0x00,5);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (47,80000000017,'2025-07-19','2025-08-22',14100.00,0,NULL,'rafael.sandoval@club.com',0x00,4);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (48,80000000018,'2025-08-27','2025-09-18',14700.00,1,NULL,'nadia.chavez@club.com',0x00,6);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (49,80000000019,'2025-09-11','2025-10-05',14300.00,0,NULL,'hilda.guerra@club.com',0x00,3);
INSERT INTO usuario.EMPLEADO(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
    VALUES (50,80000000020,'2025-10-07','2025-11-10',14600.00,0,NULL,'victor.esquivel@club.com',0x00,10);
GO

-- Inserciones para servicio.INSCRIPCION (algunas inscripciones de socios)
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-01-03 09:00:00','T','ACTIVA',1,1);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-01-04 10:30:00','E','ACTIVA',2,2);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-02-05 08:45:00','T','ACTIVA',3,3);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-02-10 19:15:00','E','CANCELADA',4,4);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-03-02 07:30:00','T','ACTIVA',5,5);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-03-18 18:00:00','E','ACTIVA',6,6);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-04-01 09:15:00','T','ACTIVA',7,7);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-04-20 20:00:00','E','ACTIVA',8,8);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-05-03 08:00:00','T','CANCELADA',9,9);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-05-21 18:30:00','E','ACTIVA',10,10);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-06-04 07:45:00','T','ACTIVA',11,11);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-06-19 19:10:00','E','ACTIVA',12,12);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-07-06 09:20:00','T','ACTIVA',13,13);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-07-22 17:40:00','E','CANCELADA',1,14);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-08-02 08:30:00','T','ACTIVA',2,15);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-08-18 19:25:00','E','ACTIVA',3,16);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-09-05 07:55:00','T','ACTIVA',4,17);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-09-21 18:05:00','E','ACTIVA',5,18);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-10-03 09:05:00','T','ACTIVA',6,19);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) 
    VALUES ('2025-10-19 20:10:00','E','ACTIVA',7,20);
GO

-- Inserciones para usuario.TELEFONO (un teléfono por cada usuario_web)
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000001,1);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000002,2);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000003,3);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000004,4);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000005,5);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000006,6);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000007,7);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000008,8);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000009,9);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000010,10);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000011,11);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000012,12);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000013,13);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000014,14);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000015,15);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000016,16);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000017,17);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000018,18);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000019,19);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000020,20);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000021,21);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000022,22);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000023,23);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000024,24);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000025,25);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000026,26);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000027,27);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000028,28);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000029,29);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000030,30);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000031,31);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000032,32);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000033,33);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000034,34);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000035,35);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000036,36);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000037,37);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000038,38);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000039,39);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000040,40);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000041,41);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000042,42);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000043,43);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000044,44);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000045,45);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000046,46);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000047,47);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000048,48);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000049,49);
INSERT INTO usuario.TELEFONO(telefono,usuario_id) 
    VALUES (5510000050,50);
GO

-- Inserciones para usuario.CORREO (un correo por cada socio)
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio01@club.com',1);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio02@club.com',2);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio03@club.com',3);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio04@club.com',4);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio05@club.com',5);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio06@club.com',6);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio07@club.com',7);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio08@club.com',8);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio09@club.com',9);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio10@club.com',10);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio11@club.com',11);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio12@club.com',12);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio13@club.com',13);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio14@club.com',14);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio15@club.com',15);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio16@club.com',16);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio17@club.com',17);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio18@club.com',18);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio19@club.com',19);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio20@club.com',20);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio21@club.com',21);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio22@club.com',22);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio23@club.com',23);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio24@club.com',24);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio25@club.com',25);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio26@club.com',26);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio27@club.com',27);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio28@club.com',28);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio29@club.com',29);
INSERT INTO usuario.CORREO(correo,usuario_id) 
    VALUES ('socio30@club.com',30);
GO

-- =============================================
-- 4. TABLAS OPERATIVAS Y RELACIONES
-- =============================================

-- Registros de operacion.ALQUILER
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-01-03 09:00:00','09:00:00','10:00:00',10,1,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-01-05 11:00:00','11:00:00','12:00:00',8,2,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-02-10 18:00:00','18:00:00','19:00:00',6,3,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-02-15 08:00:00','08:00:00','09:00:00',12,4,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-03-02 10:00:00','10:00:00','11:00:00',15,5,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-03-04 17:00:00','17:00:00','18:00:00',20,6,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-04-06 09:00:00','09:00:00','10:00:00',9,7,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-04-09 19:00:00','19:00:00','20:00:00',14,8,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-05-01 07:00:00','07:00:00','08:00:00',5,9,2);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-05-03 12:00:00','12:00:00','13:00:00',18,10,2);

INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-06-02 09:00:00','09:00:00','10:00:00',7,11,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-06-05 11:00:00','11:00:00','12:00:00',11,12,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-07-07 16:00:00','16:00:00','17:00:00',16,13,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-07-10 08:00:00','08:00:00','09:00:00',13,14,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-08-01 18:00:00','18:00:00','19:00:00',10,15,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-08-04 19:00:00','19:00:00','20:00:00',22,16,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-09-02 07:00:00','07:00:00','08:00:00',8,17,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-09-05 10:00:00','10:00:00','11:00:00',9,18,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-10-03 17:00:00','17:00:00','18:00:00',12,19,3);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-10-05 09:00:00','09:00:00','10:00:00',6,20,3);

INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-01-12 16:00:00','16:00:00','17:00:00',10,21,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-02-20 19:00:00','19:00:00','20:00:00',11,22,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-03-18 08:00:00','08:00:00','09:00:00',7,23,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-04-22 11:00:00','11:00:00','12:00:00',15,24,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-05-18 17:00:00','17:00:00','18:00:00',9,25,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-06-20 07:00:00','07:00:00','08:00:00',13,26,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-07-22 10:00:00','10:00:00','11:00:00',8,27,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-08-24 18:00:00','18:00:00','19:00:00',14,28,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-09-26 09:00:00','09:00:00','10:00:00',10,29,4);
INSERT INTO operacion.ALQUILER(fecha,hora_inicio,hora_fin,numero_personas,usuario_id,estado_alquiler_id) 
    VALUES ('2025-10-28 12:00:00','12:00:00','13:00:00',12,30,4);
GO

-- Registros de operacion.ALQUILER_INSTALACION
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (1,1);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (2,2);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (3,3);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (4,4);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (5,5);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (6,6);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (7,7);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (8,8);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (9,9);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (10,10);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (11,1);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (12,2);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (13,3);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (14,4);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (15,5);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (16,6);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (17,7);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (18,8);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (19,9);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (20,10);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (21,1);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (22,2);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (23,3);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (24,4);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (25,5);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (26,6);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (27,7);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (28,8);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (29,9);
INSERT INTO operacion.ALQUILER_INSTALACION(alquiler_id,instalacion_id) 
    VALUES (30,10);
GO

-- Registros de operacion.HISTORICO_ALQUILER
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (1,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (1,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (2,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (2,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (3,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (3,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (4,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (4,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (5,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (5,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (6,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (6,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (7,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (7,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (8,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (8,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (9,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (9,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (10,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (10,2,'2025-01-02 09:00:00');

INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (11,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (11,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (11,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (12,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (12,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (12,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (13,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (13,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (13,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (14,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (14,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (14,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (15,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (15,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (15,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (16,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (16,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (16,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (17,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (17,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (17,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (18,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (18,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (18,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (19,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (19,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (19,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (20,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (20,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (20,3,'2025-01-03 10:00:00');

INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (21,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (21,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (21,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (21,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (22,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (22,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (22,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (22,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (23,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (23,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (23,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (23,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (24,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (24,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (24,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (24,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (25,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (25,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (25,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (25,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (26,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (26,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (26,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (26,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (27,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (27,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (27,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (27,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (28,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (28,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (28,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (28,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (29,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (29,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (29,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (29,4,'2025-01-04 11:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (30,1,'2025-01-01 08:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (30,2,'2025-01-02 09:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (30,3,'2025-01-03 10:00:00');
INSERT INTO operacion.HISTORICO_ALQUILER(alquiler_id,estado_alquiler_id,fehca_hora) 
    VALUES (30,4,'2025-01-04 11:00:00');
GO

-- Registros de operacion.MATERIAL
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Balon futbol talla 5',6,1);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Conos entrenamiento',20,1);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Mancuernas 5kg par',8,2);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Tapetes yoga',15,2);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Pelotas basquetbol',10,3);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Ligas resistencia',25,3);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Colchonetas gimnasio',12,4);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Balones medicinales',9,4);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Raquetas frontenis',10,5);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Pelotas frontenis',40,5);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Chalecos peso',5,6);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Cuerdas para saltar',18,6);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Discos 10kg',16,7);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Barras olimpicas',7,7);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Balon voleibol',12,8);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Aros coordinacion',14,8);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Steps aerobicos',9,9);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Casilleros portatiles',6,9);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Botas agua aquaerobics',10,10);
INSERT INTO operacion.MATERIAL(nombre,total_unidades,alquiler_instalacion_id) 
    VALUES ('Tablas natacion',22,10);
GO

-- Registros de servicio.ENTRENAMIENTO
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('06:00:00','07:00:00',1,1);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('07:00:00','08:00:00',2,2);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('18:00:00','19:00:00',3,3);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('19:00:00','20:00:00',4,4);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('17:00:00','18:00:00',5,5);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('08:00:00','09:00:00',6,6);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('09:00:00','10:00:00',7,7);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('20:00:00','21:00:00',1,8);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('06:30:00','07:30:00',2,9);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('07:30:00','08:30:00',3,10);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('18:30:00','19:30:00',4,11);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('19:30:00','20:30:00',5,12);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('16:00:00','17:00:00',6,13);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('10:00:00','11:00:00',7,14);
INSERT INTO servicio.ENTRENAMIENTO(hora_inicio,hora_fin,dia_semana_id,usuario_id) 
    VALUES ('11:00:00','12:00:00',1,15);
GO

-- Registros de servicio.DIETA
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Baja en carbohidratos','2025-01-10',1);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Hipocalorica ligera','2025-01-20',2);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Aumento masa muscular','2025-02-05',3);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Mantenimiento saludable','2025-02-18',4);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Vegetariana balanceada','2025-03-03',5);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Alta en proteinas','2025-03-22',6);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Definicion atletica','2025-04-15',7);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Dieta mediterranea','2025-05-02',8);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Sin gluten controlada','2025-06-07',9);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Control hipertension','2025-07-11',10);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Control colesterol','2025-08-09',11);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Dieta cetogenica suave','2025-09-14',12);
INSERT INTO servicio.DIETA(nombre_plan,fecha_creacion,usuario_id) 
    VALUES ('Recuperacion deportiva','2025-10-19',13);
GO

-- Registros de usuario.PARENTESCO
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (1,2,3);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (2,1,1);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (3,4,7);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (4,3,7);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (5,6,5);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (6,5,6);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (7,8,11);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (8,7,12);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (9,10,1);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (10,9,3);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (11,12,9);
INSERT INTO usuario.PARENTESCO(usuario_id,familiar_id,parentesco_id) 
    VALUES (12,11,3);
GO

-- Registros de operacion.PAGO
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-01-01 10:00:00','E',NULL,NULL,NULL,NULL,1);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-02-01 10:00:00','E',NULL,NULL,NULL,NULL,2);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-03-01 10:00:00','E',NULL,NULL,NULL,NULL,3);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-04-01 10:00:00','E',NULL,NULL,NULL,NULL,4);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-05-01 10:00:00','E',NULL,NULL,NULL,NULL,5);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-06-01 10:00:00','E',NULL,NULL,NULL,NULL,6);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-07-01 10:00:00','E',NULL,NULL,NULL,NULL,7);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-08-01 10:00:00','E',NULL,NULL,NULL,NULL,8);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-09-01 10:00:00','E',NULL,NULL,NULL,NULL,9);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (1,500,'2025-10-01 10:00:00','E',NULL,NULL,NULL,NULL,10);

INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-01-02 11:00:00','T','Banco Norte','2025-02-01 00:00:00','2026-01-01 00:00:00',4111111111110101,1);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-02-02 11:00:00','T','Banco Centro','2025-03-01 00:00:00','2026-01-01 00:00:00',4111111111110202,2);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-03-02 11:00:00','T','Banco Norte','2025-04-01 00:00:00','2026-01-01 00:00:00',4111111111110303,3);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-04-02 11:00:00','T','Banco Centro','2025-05-01 00:00:00','2026-01-01 00:00:00',4111111111110404,4);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-05-02 11:00:00','T','Banco Norte','2025-06-01 00:00:00','2026-01-01 00:00:00',4111111111110505,5);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-06-02 11:00:00','T','Banco Centro','2025-07-01 00:00:00','2026-01-01 00:00:00',4111111111110606,6);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-07-02 11:00:00','T','Banco Norte','2025-08-01 00:00:00','2026-01-01 00:00:00',4111111111110707,7);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-08-02 11:00:00','T','Banco Centro','2025-09-01 00:00:00','2026-01-01 00:00:00',4111111111110808,8);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-09-02 11:00:00','T','Banco Norte','2025-10-01 00:00:00','2026-01-01 00:00:00',4111111111110909,9);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (2,500,'2025-10-02 11:00:00','T','Banco Centro','2025-11-01 00:00:00','2026-01-01 00:00:00',4111111111111010,10);
GO

-- =============================================
-- 5. TABLAS INTERMEDIAS 
-- =============================================

-- Inserts para catalogo.HORARIO_DIA_SEMANA
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (1,1);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (3,1);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (5,1);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (2,2);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (4,2);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (6,3);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (1,4);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (3,4);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (5,4);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (2,5);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (4,5);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (1,6);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (3,6);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (5,6);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (6,7);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (7,7);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (1,8);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (2,8);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (3,8);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (4,9);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (5,9);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (1,10);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (3,10);
INSERT INTO catalogo.HORARIO_DIA_SEMANA(dia_semana_id,horario_id) 
    VALUES (5,10);
GO

-- Inserts para servicio.EJERCICIO_ENTRENAMIENTO
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (1,1);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (1,2);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (2,3);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (2,4);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (3,5);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (3,6);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (4,2);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (4,7);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (5,1);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (5,5);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (6,8);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (6,9);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (7,4);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (7,10);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (8,3);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (8,6);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (9,7);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (9,8);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (10,9);
INSERT INTO servicio.EJERCICIO_ENTRENAMIENTO(entrenamiento_id,ejercicio_id) 
    VALUES (10,10);
GO

-- Inserts para servicio.EMPLEADO_ACTIVIDAD
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (31,1);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (32,1);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (31,2);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (33,2);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (31,3);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (34,3);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (32,4);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (34,4);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (32,5);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (35,5);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (33,6);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (35,6);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (33,7);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (34,7);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (34,8);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (35,8);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (31,9);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (35,9);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (32,10);
INSERT INTO servicio.EMPLEADO_ACTIVIDAD(usuario_id,actividad_id) 
    VALUES (33,10);
GO

-- Inserts para servicio.EMPLEADO_SERVICIO
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (31,1);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (32,1);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (31,2);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (33,2);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (32,3);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (34,3);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (33,4);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (34,4);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (34,5);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (35,5);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (31,6);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (35,6);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (32,7);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (33,7);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (31,8);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (34,8);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (33,9);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (35,9);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (32,10);
INSERT INTO servicio.EMPLEADO_SERVICIO(usuario_id,servicio_cuota_id) 
    VALUES (35,10);
GO

-- Inserts para servicio.PLATILLO_DIETA
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (1,1,1);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (2,1,2);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (3,1,3);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (4,1,4);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (5,1,5);

INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (3,2,1);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (4,2,3);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (5,2,5);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (6,2,2);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (7,2,4);

INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (5,3,1);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (6,3,3);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (7,3,5);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (8,3,2);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (9,3,4);

INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (7,4,1);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (8,4,3);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (9,4,5);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (10,4,2);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (9,2,4);

INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (9,5,1);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (8,5,3);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (9,1,5);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (10,5,2);
INSERT INTO servicio.PLATILLO_DIETA(platillo_id,dieta_id,dia_semana_id) 
    VALUES (1,5,4);
GO

-- NUEVOS HORARIOS
INSERT INTO catalogo.HORARIO(horario_id,lugar,hora_fin,hora_inicio,dias_semana) VALUES (11,'Sala Spinning Nocturno','21:00:00','20:00:00','L,M,X,J,V');
INSERT INTO catalogo.HORARIO(horario_id,lugar,hora_fin,hora_inicio,dias_semana) VALUES (12,'Sala Yoga 2','09:00:00','08:00:00','L,M,X,J,V');
INSERT INTO catalogo.HORARIO(horario_id,lugar,hora_fin,hora_inicio,dias_semana) VALUES (13,'Zona Crossfit 2','19:00:00','18:00:00','L,M,X,J');
INSERT INTO catalogo.HORARIO(horario_id,lugar,hora_fin,hora_inicio,dias_semana) VALUES (14,'Alberca Recreativa','11:00:00','10:00:00','M,X,J,S');
INSERT INTO catalogo.HORARIO(horario_id,lugar,hora_fin,hora_inicio,dias_semana) VALUES (15,'Sala Pilates 2','18:30:00','17:30:00','L,M,X,J,V');
INSERT INTO catalogo.HORARIO(horario_id,lugar,hora_fin,hora_inicio,dias_semana) VALUES (16,'Ring de Box 2','21:30:00','20:30:00','M,J,S');

-- NUEVOS HORARIOS
INSERT INTO catalogo.HORARIO(lugar,hora_fin,hora_inicio) VALUES ('Sala Spinning Nocturno','21:00:00','20:00:00');
INSERT INTO catalogo.HORARIO(lugar,hora_fin,hora_inicio) VALUES ('Sala Yoga 2','09:00:00','08:00:00');
INSERT INTO catalogo.HORARIO(lugar,hora_fin,hora_inicio) VALUES ('Zona Crossfit 2','19:00:00','18:00:00');
INSERT INTO catalogo.HORARIO(lugar,hora_fin,hora_inicio) VALUES ('Alberca Recreativa','11:00:00','10:00:00');
INSERT INTO catalogo.HORARIO(lugar,hora_fin,hora_inicio) VALUES ('Sala Pilates 2','18:30:00','17:30:00');
INSERT INTO catalogo.HORARIO(lugar,hora_fin,hora_inicio) VALUES ('Ring de Box 2','21:30:00','20:30:00');

-- NUEVAS ACTIVIDADES
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) VALUES ('Spinning nocturno','Clase de spinning de alta intensidad',18,'Grupo',1,11);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) VALUES ('Yoga avanzado 2','Sesión de yoga para alumnos avanzados',18,'Grupo',2,12);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) VALUES ('Crossfit funcional 2','Entrenamiento funcional de alta intensidad',18,'Grupo',3,13);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) VALUES ('Natación recreativa adultos','Clase recreativa de natación para adultos',16,'Grupo',4,14);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) VALUES ('Pilates suelo intermedio','Clase de pilates en piso para fortalecimiento de core',18,'Grupo',5,15);
INSERT INTO servicio.ACTIVIDAD(nombre,descripcion,edad_requerida,tipo,instalacion_id,horario_id) VALUES ('Box recreativo nocturno','Entrenamiento recreativo de box por la noche',18,'Grupo',6,16);

-- NUEVAS INSCRIPCIONES 
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-03 20:05:00','T','ACTIVA',11,1);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-10 20:10:00','E','ACTIVA',11,2);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-05 08:05:00','T','ACTIVA',12,3);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-12 08:10:00','T','ACTIVA',12,4);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-07 18:05:00','E','ACTIVA',13,5);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-21 18:10:00','T','ACTIVA',13,6);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-09 10:05:00','T','ACTIVA',14,7);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-23 10:10:00','E','ACTIVA',14,8);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-02 17:35:00','T','ACTIVA',15,9);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-16 17:40:00','T','ACTIVA',15,10);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-04 20:35:00','E','ACTIVA',16,11);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-18 20:40:00','T','ACTIVA',16,12);
GO

-- 15 NUEVOS SOCIOS 
SET IDENTITY_INSERT usuario.USUARIO_WEB ON;

INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (101,'S','socio101','pass101','Luis','Ramirez','Lopez',1);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (102,'S','socio102','pass102','Maria','Gonzalez','Perez',2);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (103,'S','socio103','pass103','Carlos','Hernandez','Sosa',3);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (104,'S','socio104','pass104','Ana','Lopez','Martinez',4);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (105,'S','socio105','pass105','Jorge','Torres','Diaz',5);

INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (106,'S','socio106','pass106','Paola','Castillo','Reyes',1);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (107,'S','socio107','pass107','Diego','Mendoza','Vargas',2);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (108,'S','socio108','pass108','Fernanda','Navarro','Silva',3);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (109,'S','socio109','pass109','Ricardo','Flores','Rojas',4);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (110,'S','socio110','pass110','Elena','Ruiz','Campos',5);

INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (111,'S','socio111','pass111','Hector','Ortiz','Luna',1);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (112,'S','socio112','pass112','Sofia','Ramos','Ibarra',2);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (113,'S','socio113','pass113','Manuel','Aguilar','Nieto',3);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (114,'S','socio114','pass114','Claudia','Chavez','Figueroa',4);
INSERT INTO usuario.USUARIO_WEB(usuario_id,tipo_usuario,usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) VALUES (115,'S','socio115','pass115','Andres','Pineda','Cortez',5);

-- SOCIOS
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (101,1,172,74,'2000-03-15','2025-01-05 10:00:00',0x,0,'A',900001,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (102,2,160,60,'1999-07-22','2025-01-06 11:00:00',0x,0,'A',900002,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (103,1,180,82,'1998-11-10','2025-01-07 09:30:00',0x,1,'A',900003,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (104,2,165,58,'2001-02-05','2025-01-08 18:15:00',0x,0,'A',900004,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (105,1,175,79,'1997-09-30','2025-01-09 19:00:00',0x,2,'A',900005,'E');

INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (106,2,162,63,'2000-12-12','2025-02-01 08:45:00',0x,0,'A',900006,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (107,1,178,81,'1999-05-18','2025-02-02 17:20:00',0x,1,'A',900007,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (108,2,158,55,'2001-08-09','2025-02-03 07:50:00',0x,0,'A',900008,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (109,1,183,88,'1998-01-25','2025-02-04 20:10:00',0x,0,'A',900009,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (110,2,167,62,'1997-06-14','2025-02-05 13:30:00',0x,3,'A',900010,'E');

INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (111,1,170,70,'1999-04-02','2025-03-01 09:15:00',0x,0,'A',900011,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (112,2,161,57,'2000-10-19','2025-03-02 18:40:00',0x,0,'A',900012,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (113,1,176,76,'1998-09-11','2025-03-03 16:05:00',0x,1,'A',900013,'E');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (114,2,159,54,'2001-03-28','2025-03-04 12:25:00',0x,0,'A',900014,'V');
INSERT INTO usuario.SOCIO(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) VALUES (115,1,182,85,'1997-11-07','2025-03-05 11:10:00',0x,0,'A',900015,'V');

-- INSCRIPCIONES 
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-05 08:05:00','T','ACTIVA',1,101);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-06 18:10:00','E','ACTIVA',2,102);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-07 07:55:00','T','ACTIVA',3,103);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-08 19:20:00','T','ACTIVA',4,104);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-09 10:15:00','E','ACTIVA',5,105);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-10 17:30:00','T','ACTIVA',6,106);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-11 08:20:00','E','ACTIVA',7,107);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-12 09:10:00','T','ACTIVA',8,108);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-13 18:45:00','T','ACTIVA',9,109);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-14 07:40:00','E','ACTIVA',10,110);

INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-15 19:05:00','T','ACTIVA',1,111);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-16 08:35:00','T','ACTIVA',2,112);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-17 17:50:00','E','ACTIVA',3,113);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-18 10:25:00','T','ACTIVA',4,114);
INSERT INTO servicio.INSCRIPCION(fecha_hora,metodo_pago,estado_inscripcion,horario_id,usuario_id) VALUES ('2025-10-19 09:15:00','E','ACTIVA',5,115);
GO

-- NUEVOS REGISTROS DE PAGOS
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,1);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,2);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,3);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,4);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,5);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,6);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,7);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,8);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,9);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (3,500,'2025-10-03 10:00:00','E',NULL,NULL,NULL,NULL,10);

INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,1);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,2);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,3);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,4);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,5);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,6);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,7);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,8);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,9);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (4,500,'2025-10-04 10:00:00','E',NULL,NULL,NULL,NULL,10);

INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,1);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,2);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,3);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,4);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,5);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,6);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,7);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,8);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,9);
INSERT INTO operacion.PAGO(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
    VALUES (5,500,'2025-10-05 10:00:00','E',NULL,NULL,NULL,NULL,10);
GO
