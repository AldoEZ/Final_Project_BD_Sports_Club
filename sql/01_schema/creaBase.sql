/*
AUTOR: 
ECHEVERRIA GOICOCHEA ERICK ISAAC 
ESTRADA ZACARIAS ALDO AXEL

DESCRIPCION: SCRIPT PARA LA CREACION DE LAS TABLAS DEL MODELO RELACIONAL - PROYECTO 
FECHA: 23/11/2025
*/


--CREAR LA BASE DE DATOS
create database PROYECTO_1
go

-- Abrimos la base de datos
Use PROYECTO
go

create schema catalogo
go

create schema servicio
go 

create schema usuario
go 

create schema operacion
go 

-- =============================================
-- 1. TABLAS CATALOGOS/INDEPENDIENTES
-- =============================================

-- Tabla catalogos de alcadias
CREATE TABLE catalogo.ALCALDIA(
    alcaldia_id NUMERIC(2,0) NOT NULL IDENTITY(1,1),
    nombre_alcaldia VARCHAR(40) NOT NULL
    CONSTRAINT pk_alcaldia PRIMARY KEY CLUSTERED (alcaldia_id)
);
GO

-- Tabla catalogos de colonias
CREATE TABLE catalogo.COLONIA(
    colonia_id NUMERIC(10,0) NOT NULL IDENTITY(1,1),
    nombre_colonia VARCHAR(40) NOT NULL
    CONSTRAINT pk_colonia PRIMARY KEY CLUSTERED (colonia_id)
);
GO

-- Tabla catalogos de sexo
CREATE TABLE catalogo.SEXO(
    sexo_id NUMERIC(1,0) NOT NULL IDENTITY(1,1),
    nombre_sexo VARCHAR(10) NOT NULL
    CONSTRAINT pk_sexo PRIMARY KEY CLUSTERED (sexo_id)
);
GO

-- Tabla dia_semana
CREATE TABLE catalogo.DIA_SEMANA(
    dia_semana_id NUMERIC(1,0) NOT NULL IDENTITY(1,1),
    nombre_dia VARCHAR(40) NOT NULL
    CONSTRAINT pk_dia_semana PRIMARY KEY CLUSTERED (dia_semana_id)
);
GO

-- Tabla estado_alquiler
CREATE TABLE catalogo.ESTADO_ALQUILER(
    estado_alquiler_id    NUMERIC(1, 0)     NOT NULL IDENTITY(1,1),
    estado                VARCHAR(40)       NOT NULL,
    CONSTRAINT pk_estado_alquiler PRIMARY KEY CLUSTERED (estado_alquiler_id)
);
GO

-- Tabla instalacion
CREATE TABLE catalogo.INSTALACION(
    instalacion_id    NUMERIC(2, 0)     NOT NULL IDENTITY(1,1),
    capacidad         NUMERIC(4, 0)     NOT NULL,
    nombre            VARCHAR(40)       NOT NULL,
    CONSTRAINT pk_instalacion PRIMARY KEY CLUSTERED (instalacion_id)
);
GO

-- Tabla ejercicio
CREATE TABLE catalogo.EJERCICIO(
    ejercicio_id      NUMERIC(6, 0)     NOT NULL IDENTITY(1,1),
    nombre            VARCHAR(40)       NOT NULL,
    descripcion       VARCHAR(150)      NOT NULL,
    tipo_ejercicio    VARCHAR(40)       NOT NULL,
    zona_corporal     VARCHAR(40)       NOT NULL,
    numero_series     NUMERIC(2, 0)     NOT NULL,
    repeticiones      NUMERIC(2, 0)     NOT NULL,
    CONSTRAINT pk_ejercicio PRIMARY KEY CLUSTERED (ejercicio_id)
);
GO

-- Tabla platillo
CREATE TABLE catalogo.PLATILLO(
    platillo_id          NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    nombre               VARCHAR(40)       NOT NULL,
    descripcion          VARCHAR(150)      NOT NULL,
    horario              VARCHAR(40)       NOT NULL,
    calorias_por_racion  NUMERIC(18, 0)    NULL,
    CONSTRAINT pk_platillo PRIMARY KEY CLUSTERED (platillo_id)
);
GO

-- Tabla horario
CREATE TABLE catalogo.HORARIO(
    horario_id     NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    lugar          VARCHAR(40)       NOT NULL,
    hora_fin       TIME(7)           NOT NULL,
    hora_inicio    TIME(7)           NOT NULL,
    CONSTRAINT pk_horario PRIMARY KEY CLUSTERED (horario_id)
);
GO

-- Tabla tipo_parentesco
CREATE TABLE catalogo.TIPO_PARENTESCO(
    parentesco_id   NUMERIC(10,0)     NOT NULL IDENTITY(1,1),
    descripcion     VARCHAR(40)       NOT NULL,
    CONSTRAINT pk_tipo_parentesco PRIMARY KEY CLUSTERED (parentesco_id)
);
GO

-- Tabla puesto (dependia de empleado)
CREATE TABLE catalogo.PUESTO(
    puesto_id     NUMERIC(4, 0)     NOT NULL IDENTITY(1,1),
    puesto        VARCHAR(40)       NOT NULL,
    CONSTRAINT pk_puesto PRIMARY KEY CLUSTERED (puesto_id)
);
GO

-- =============================================
-- 2. TABLAS CON DEPENDENCIAS 
-- =============================================

-- Tabla direccion 
CREATE TABLE usuario.DIRECCION(
    direccion_id    NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    alcaldia_id      NUMERIC(2,0)       NOT NULL, 
    colonia_id      NUMERIC(10,0)       NOT NULL,
    calle           VARCHAR(40)       NOT NULL,
    numero          NUMERIC(3, 0)     NOT NULL,
    CONSTRAINT pk_direccion PRIMARY KEY CLUSTERED (direccion_id),
    CONSTRAINT fk_direccion_alcaldia FOREIGN KEY (alcaldia_id)
        REFERENCES catalogo.alcaldia(alcaldia_id),
    CONSTRAINT fk_direccion_colonia FOREIGN KEY (colonia_id)
        REFERENCES catalogo.colonia(colonia_id)
);
GO


-- Tabla actividad (Depende de instalacion)
CREATE TABLE servicio.ACTIVIDAD(
    actividad_id      NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    nombre            VARCHAR(40)       NOT NULL,
    descripcion       VARCHAR(150)      NOT NULL, 
    edad_requerida    NUMERIC(2, 0)     NOT NULL DEFAULT 16,
    tipo              VARCHAR(40)       NOT NULL,
    instalacion_id    NUMERIC(2, 0)     NOT NULL,
    horario_id        NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_actividad PRIMARY KEY CLUSTERED (actividad_id),
    CONSTRAINT fk_actividad_instalacion FOREIGN KEY (instalacion_id)
        REFERENCES catalogo.instalacion(instalacion_id),
    CONSTRAINT fk_actividad_horario FOREIGN KEY (horario_id)
        REFERENCES catalogo.horario(horario_id)
);
GO

-- Tabla servicio_cuota (Depende de horario e instalacion)
CREATE TABLE servicio.SERVICIO_CUOTA(
    servicio_cuota_id    NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    nombre               VARCHAR(40)       NOT NULL,
    edad_requerida       NUMERIC(2, 0)     NOT NULL,
    descripcion          VARCHAR(150)      NOT NULL,
    costo                MONEY             NOT NULL,
    horario_id           NUMERIC(10, 0)    NOT NULL,
    instalacion_id       NUMERIC(2, 0)     NOT NULL, 
    CONSTRAINT pk_servicio_cuota PRIMARY KEY CLUSTERED (servicio_cuota_id),
    CONSTRAINT fk_servicio_horario FOREIGN KEY (horario_id)
        REFERENCES catalogo.horario(horario_id),
    CONSTRAINT fk_servicio_instalacion FOREIGN KEY (instalacion_id)
        REFERENCES catalogo.instalacion(instalacion_id)
);
GO

-- =============================================
-- 3. TABLAS DE USUARIOS Y JERARQUIA
-- =============================================

-- Tabla usuario_web (Padre)
CREATE TABLE usuario.USUARIO_WEB(
    usuario_id          NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    tipo_usuario        VARCHAR(1)        NOT NULL,
    usuario             VARCHAR(40)       NOT NULL,
    contrasenia         VARCHAR(40)       NOT NULL, 
    nombre_pila         VARCHAR(40)       NOT NULL,
    apellido_paterno    VARCHAR(40)       NOT NULL,
    apellido_materno    VARCHAR(40)       NULL,
    direccion_id        NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_usuario_web PRIMARY KEY CLUSTERED (usuario_id),
    CONSTRAINT fk_usuario_direccion FOREIGN KEY (direccion_id)
        REFERENCES usuario.direccion(direccion_id)
);
GO

-- Tabla socio (Hijo de usuario_web)
CREATE TABLE usuario.SOCIO(
    usuario_id          NUMERIC(10, 0)    NOT NULL,-- (PK,FK)
	sexo_id				NUMERIC(1,0)	  NOT NULL,
	estatura			NUMERIC(3,0)	  NOT NULL,
	peso				NUMERIC(3,0)	  NOT NULL,
    fecha_nacimiento    DATE              NULL,
    fecha_inicio        DATETIME          NOT NULL,
    foto                IMAGE             NOT NULL,
    meses_adeudados     NUMERIC(1, 0)     NOT NULL,
    estado_socio        VARCHAR(40)       NOT NULL,
    numero_socio        NUMERIC(12, 0)    NOT NULL,-- UNIQUE
    tipo_membresia      CHAR(1)		      NOT NULL,
	CONSTRAINT estado_socio_chk CHECK (estado_socio IN ('A', 'C')),
	CONSTRAINT tipo_membresia_chk CHECK (tipo_membresia IN ('V','E')),
    CONSTRAINT pk_socio PRIMARY KEY CLUSTERED (usuario_id),
    CONSTRAINT uk_numero_socio UNIQUE (numero_socio),
    CONSTRAINT fk_socio_sexo FOREIGN KEY (sexo_id)
        REFERENCES catalogo.sexo (sexo_id),
    CONSTRAINT fk_socio_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuario.usuario_web(usuario_id)
);
GO

-- Tabla empleado (Hijo de usuario_web)
CREATE TABLE usuario.EMPLEADO(
    usuario_id          NUMERIC(10, 0)    NOT NULL, -- (PK,FK)
    nss                 NUMERIC(11, 0)    NOT NULL, -- UNIQUE
    fecha_cumpleanios   DATE              NOT NULL, 
    fecha_ingreso       DATE              NOT NULL,
    sueldo              MONEY             NOT NULL,
    abono               BIT               NOT NULL,
    edad                NUMERIC(2, 0)     NULL,
    correo              VARCHAR(40)       NOT NULL,
    maestro             BINARY            NOT NULL,
    puesto_id           NUMERIC(4,0)     NOT NULL,
	CONSTRAINT abono_chk CHECK (abono IN (0, 1)),
    CONSTRAINT pk_empleado PRIMARY KEY CLUSTERED (usuario_id),
    CONSTRAINT uk_empleado_nss UNIQUE (nss),
    CONSTRAINT fk_empleado_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuario.usuario_web(usuario_id),
    CONSTRAINT fk_empleado_puesto FOREIGN KEY (puesto_id)
        REFERENCES catalogo.puesto(puesto_id)
);
GO

-- Tabla inscripcion (Depende de usuario y horario)
CREATE TABLE servicio.INSCRIPCION(
    inscripcion_id        NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    fecha_hora            DATETIME          NOT NULL,
    metodo_pago           CHAR(1)    	    NULL,
    estado_inscripcion    VARCHAR(10)       NOT NULL,
    horario_id            NUMERIC(10, 0)    NOT NULL,
    usuario_id            NUMERIC(10, 0)    NOT NULL,
	CONSTRAINT metodo_pago_chk CHECK (metodo_pago IN ('T', 'E')),
    CONSTRAINT pk_inscripcion PRIMARY KEY CLUSTERED (inscripcion_id),
    CONSTRAINT fk_inscripcion_horario FOREIGN KEY (horario_id)
        REFERENCES catalogo.horario(horario_id),
    CONSTRAINT fk_inscripcion_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id)
);
GO

-- Tabla telefono (Multivaluado)
CREATE TABLE usuario.TELEFONO(
    telefono_id    NUMERIC(18, 0)    NOT NULL IDENTITY(1,1),
    telefono       NUMERIC(10, 0)    NOT NULL,
    usuario_id     NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_telefono PRIMARY KEY CLUSTERED (telefono_id),
    CONSTRAINT fk_telefono_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuario.usuario_web(usuario_id)
);
GO

-- Tabla correo (Multivaluado)
CREATE TABLE usuario.CORREO(
    correo_id     NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    correo        VARCHAR(40)       NOT NULL,
    usuario_id    NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_correo PRIMARY KEY CLUSTERED (correo_id),
    CONSTRAINT fk_correo_socio FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id)
);
GO

-- =============================================
-- 4. TABLAS OPERATIVAS Y RELACIONES
-- =============================================

-- Tabla alquiler
CREATE TABLE operacion.ALQUILER(
    alquiler_id           NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    fecha                 DATETIME          NOT NULL,
	hora_inicio			  TIME(7)			NOT NULL,
    hora_fin              TIME(7)           NOT NULL,
    numero_personas       NUMERIC(3, 0)     NOT NULL,
    usuario_id            NUMERIC(10, 0)    NOT NULL,
    estado_alquiler_id    NUMERIC(1, 0)     NOT NULL,
	CONSTRAINT hora_fin_a_chk CHECK (DATEDIFF(HOUR, hora_inicio, hora_fin) = 1),
    CONSTRAINT pk_alquiler PRIMARY KEY CLUSTERED (alquiler_id),
    CONSTRAINT fk_alquiler_socio FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id),
    CONSTRAINT fk_alquiler_estado FOREIGN KEY (estado_alquiler_id)
        REFERENCES catalogo.estado_alquiler(estado_alquiler_id)
);
GO

-- Tabla alquiler_instalacion
CREATE TABLE operacion.ALQUILER_INSTALACION(
    alquiler_instalacion_id    NUMERIC(18, 0)    NOT NULL IDENTITY(1,1),
    alquiler_id                NUMERIC(10, 0)    NOT NULL,
    instalacion_id             NUMERIC(2, 0)     NOT NULL,
    CONSTRAINT pk_alquiler_instalacion PRIMARY KEY CLUSTERED (alquiler_instalacion_id),
    CONSTRAINT fk_ai_alquiler FOREIGN KEY (alquiler_id)
        REFERENCES operacion.alquiler(alquiler_id),
    CONSTRAINT fk_ai_instalacion FOREIGN KEY (instalacion_id)
        REFERENCES catalogo.instalacion(instalacion_id)
);
GO

-- Tabla historico_alquiler
CREATE TABLE operacion.HISTORICO_ALQUILER(
	alquiler_id				  NUMERIC(10,0)		NOT NULL,
	estado_alquiler_id		  NUMERIC(1,0)		NOT NULL,
    fehca_hora                DATETIME          NOT NULL,
	CONSTRAINT pk_historico_alquiler PRIMARY KEY CLUSTERED (alquiler_id,estado_alquiler_id),
	CONSTRAINT fk_ha_alquiler FOREIGN KEY (alquiler_id)
		REFERENCES operacion.alquiler(alquiler_id),
	CONSTRAINT fk_ha_estado_alquiler FOREIGN KEY (estado_alquiler_id)
		REFERENCES catalogo.estado_alquiler(estado_alquiler_id)
);
GO

-- Tabla material
CREATE TABLE operacion.MATERIAL(
    material_id                NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    nombre                     VARCHAR(40)       NOT NULL,
    total_unidades             NUMERIC(6, 0)     NOT NULL,
    alquiler_instalacion_id    NUMERIC(18, 0)    NOT NULL,
    CONSTRAINT pk_material PRIMARY KEY CLUSTERED (material_id),
    CONSTRAINT fk_material_ai FOREIGN KEY (alquiler_instalacion_id)
        REFERENCES operacion.alquiler_instalacion(alquiler_instalacion_id)
);
GO

-- Tabla entrenamiento
CREATE TABLE servicio.ENTRENAMIENTO(
    entrenamiento_id    NUMERIC(6, 0)     NOT NULL IDENTITY(1,1),
    hora_inicio         TIME(7)           NOT NULL,
    hora_fin            TIME(7)           NOT NULL,
    dia_semana_id          NUMERIC(1,0)      NOT NULL,
    usuario_id          NUMERIC(10, 0)    NOT NULL,
	CONSTRAINT hora_chk CHECK (DATEDIFF(HOUR,hora_inicio,hora_fin) <= 2),
    CONSTRAINT pk_entrenamiento PRIMARY KEY CLUSTERED (entrenamiento_id),
    CONSTRAINT fk_entrenamiento_dia_semana FOREIGN KEY(dia_semana_id)
        REFERENCES catalogo.dia_semana(dia_semana_id),
    CONSTRAINT fk_entrenamiento_socio FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id)
);
GO

-- Tabla dieta
CREATE TABLE servicio.DIETA(
    dieta_id          NUMERIC(10, 0)    NOT NULL IDENTITY(1,1),
    nombre_plan       VARCHAR(40)       NOT NULL,
    fecha_creacion    DATE              NOT NULL, 
    usuario_id        NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_dieta PRIMARY KEY CLUSTERED (dieta_id),
    CONSTRAINT fk_dieta_socio FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id)
);
GO

-- Tabla parentesco 
CREATE TABLE usuario.PARENTESCO(
    usuario_id       NUMERIC(10, 0)    NOT NULL,
    familiar_id      NUMERIC(10, 0)    NOT NULL,
	parentesco_id	 NUMERIC(10,0)	   NOT NULL,
    CONSTRAINT pk_parentesco PRIMARY KEY CLUSTERED (usuario_id,familiar_id),
    CONSTRAINT fk_parentesco_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id),
    CONSTRAINT fk_parentesco_familiar FOREIGN KEY (familiar_id)
        REFERENCES usuario.socio(usuario_id),
    CONSTRAINT fk_tipo_parentesco FOREIGN KEY (parentesco_id)
        REFERENCES catalogo.tipo_parentesco(parentesco_id)
);
GO

-- Tabla pago
CREATE TABLE operacion.PAGO(
    numero_pago       NUMERIC(2, 0)     NOT NULL, 
    usuario_id        NUMERIC(10, 0)    NOT NULL,
    cuota             MONEY             NOT NULL,
    fecha             DATETIME          NOT NULL,
    metodo_pago       VARCHAR(13)       NOT NULL,
    banco             VARCHAR(40)       NULL,
    mes_vigencia      DATETIME          NULL,
    anio_vigencia     DATETIME          NULL,
    numero_tarjeta    NUMERIC(16, 0)    NULL,
	CONSTRAINT metodo_pago_chk CHECK (metodo_pago IN ('T', 'E')),
	CONSTRAINT fecha_chk CHECK (DAY(fecha) BETWEEN 1 AND 5),
    CONSTRAINT pk_pago PRIMARY KEY CLUSTERED (numero_pago, usuario_id),
    CONSTRAINT fk_pago_socio FOREIGN KEY (usuario_id)
        REFERENCES usuario.socio(usuario_id)
);
GO

-- =============================================
-- 5. TABLAS INTERMEDIAS 
-- =============================================

-- horario_dia_semana
CREATE TABLE catalogo.HORARIO_DIA_SEMANA(
    dia_semana_id   NUMERIC(1,0) NOT NULL,
    horario_id      NUMERIC(10,0) NOT NULL,
    CONSTRAINT pk_horario_dia_semana PRIMARY KEY CLUSTERED(dia_semana_id,horario_id),
    CONSTRAINT fk_hd_horario FOREIGN KEY(horario_id)
        REFERENCES catalogo.horario(horario_id),
    CONSTRAINT fk_hd_dia_semana FOREIGN KEY(dia_semana_id)
        REFERENCES catalogo.dia_semana(dia_semana_id) 
);
GO

-- ejercicio_entrenamiento
CREATE TABLE servicio.EJERCICIO_ENTRENAMIENTO(
    entrenamiento_id    NUMERIC(6, 0)    NOT NULL,
    ejercicio_id        NUMERIC(6, 0)    NOT NULL,
    CONSTRAINT pk_ejercicio_entrenamiento PRIMARY KEY CLUSTERED (entrenamiento_id, ejercicio_id),
    CONSTRAINT fk_ee_entrenamiento FOREIGN KEY (entrenamiento_id)
        REFERENCES servicio.entrenamiento(entrenamiento_id),
    CONSTRAINT fk_ee_ejercicio FOREIGN KEY (ejercicio_id)
        REFERENCES catalogo.ejercicio(ejercicio_id)
);
GO

-- empleado_actividad
CREATE TABLE servicio.EMPLEADO_ACTIVIDAD(
    usuario_id      NUMERIC(10, 0)    NOT NULL,
    actividad_id    NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_empleado_actividad PRIMARY KEY CLUSTERED (usuario_id, actividad_id),
    CONSTRAINT fk_ea_empleado FOREIGN KEY (usuario_id)
        REFERENCES usuario.empleado(usuario_id),
    CONSTRAINT fk_ea_actividad FOREIGN KEY (actividad_id)
        REFERENCES servicio.actividad(actividad_id)
);
GO

-- empleado_servicio
CREATE TABLE servicio.EMPLEADO_SERVICIO(
    usuario_id           NUMERIC(10, 0)    NOT NULL,
    servicio_cuota_id    NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT pk_empleado_servicio PRIMARY KEY CLUSTERED (usuario_id, servicio_cuota_id),
    CONSTRAINT fk_es_empleado FOREIGN KEY (usuario_id)
        REFERENCES usuario.empleado(usuario_id),
    CONSTRAINT fk_es_servicio FOREIGN KEY (servicio_cuota_id)
        REFERENCES servicio.servicio_cuota(servicio_cuota_id)
);
GO

-- platillo_dieta
CREATE TABLE servicio.PLATILLO_DIETA(
    platillo_id    NUMERIC(10, 0)    NOT NULL,
    dieta_id       NUMERIC(10, 0)    NOT NULL,
    dia_semana_id     NUMERIC(1,0)       NOT NULL,
    CONSTRAINT pk_platillo_dieta PRIMARY KEY CLUSTERED (platillo_id, dieta_id),
    CONSTRAINT fk_pd_dia_semana FOREIGN KEY(dia_semana_id)
        REFERENCES catalogo.dia_semana(dia_semana_id),
    CONSTRAINT fk_pd_platillo FOREIGN KEY (platillo_id)
        REFERENCES catalogo.platillo(platillo_id),
    CONSTRAINT fk_pd_dieta FOREIGN KEY (dieta_id)
        REFERENCES servicio.dieta(dieta_id)
);
GO

-- INDICES PARA LLAVES FORANEAS

CREATE NONCLUSTERED INDEX IX_DIRECCION_alcaldia_id
ON usuario.DIRECCION (alcaldia_id);
GO

CREATE NONCLUSTERED INDEX IX_DIRECCION_colonia_id
ON usuario.DIRECCION (colonia_id);
GO

CREATE NONCLUSTERED INDEX IX_ACTIVIDAD_instalacion_id
ON servicio.ACTIVIDAD (instalacion_id);
GO

CREATE NONCLUSTERED INDEX IX_SERVICIO_CUOTA_horario_id
ON servicio.SERVICIO_CUOTA (horario_id);
GO

CREATE NONCLUSTERED INDEX IX_SERVICIO_CUOTA_instalacion_id
ON servicio.SERVICIO_CUOTA (instalacion_id);
GO

CREATE NONCLUSTERED INDEX IX_USUARIO_WEB_direccion_id
ON usuario.USUARIO_WEB (direccion_id);
GO

CREATE NONCLUSTERED INDEX IX_SOCIO_usuario_id
ON usuario.SOCIO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_SOCIO_sexo_id
ON usuario.SOCIO (sexo_id);
GO

CREATE NONCLUSTERED INDEX IX_EMPLEADO_usuario_id
ON usuario.EMPLEADO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_EMPLEADO_puesto_id
ON usuario.EMPLEADO (puesto_id);
GO

CREATE NONCLUSTERED INDEX IX_INSCRIPCION_horario_id
ON servicio.INSCRIPCION (horario_id);
GO

CREATE NONCLUSTERED INDEX IX_INSCRIPCION_usuario_id
ON servicio.INSCRIPCION (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_TELEFONO_usuario_id
ON usuario.TELEFONO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_CORREO_usuario_id
ON usuario.CORREO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_ALQUILER_usuario_id
ON operacion.ALQUILER (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_ALQUILER_estado_alquiler_id
ON operacion.ALQUILER (estado_alquiler_id);
GO

CREATE NONCLUSTERED INDEX IX_ALQUILER_INSTALACION_alquiler_id
ON operacion.ALQUILER_INSTALACION (alquiler_id);
GO

CREATE NONCLUSTERED INDEX IX_ALQUILER_INSTALACION_instalacion_id
ON operacion.ALQUILER_INSTALACION (instalacion_id);
GO

CREATE NONCLUSTERED INDEX IX_HISTORICO_ALQUILER_alquiler_id
ON operacion.HISTORICO_ALQUILER (alquiler_id);
GO

CREATE NONCLUSTERED INDEX IX_HISTORICO_ALQUILER_estado_alquiler_id
ON operacion.HISTORICO_ALQUILER (estado_alquiler_id);
GO

CREATE NONCLUSTERED INDEX IX_MATERIAL_alquiler_instalacion_id
ON operacion.MATERIAL (alquiler_instalacion_id);
GO

CREATE NONCLUSTERED INDEX IX_ENTRENAMIENTO_dia_semana_id
ON servicio.ENTRENAMIENTO (dia_semana_id);
GO

CREATE NONCLUSTERED INDEX IX_ENTRENAMIENTO_usuario_id
ON servicio.ENTRENAMIENTO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_DIETA_usuario_id
ON servicio.DIETA (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_PARENTESCO_usuario_id
ON usuario.PARENTESCO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_PARENTESCO_familiar_id
ON usuario.PARENTESCO (familiar_id);
GO

CREATE NONCLUSTERED INDEX IX_PARENTESCO_parentesco_id
ON usuario.PARENTESCO (parentesco_id);
GO

CREATE NONCLUSTERED INDEX IX_PAGO_usuario_id
ON operacion.PAGO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_HORARIO_DIA_SEMANA_horario_id
ON catalogo.HORARIO_DIA_SEMANA (horario_id);
GO

CREATE NONCLUSTERED INDEX IX_HORARIO_DIA_SEMANA_dia_semana_id
ON catalogo.HORARIO_DIA_SEMANA (dia_semana_id);
GO

CREATE NONCLUSTERED INDEX IX_EJERCICIO_ENTRENAMIENTO_entrenamiento_id
ON servicio.EJERCICIO_ENTRENAMIENTO (entrenamiento_id);
GO

CREATE NONCLUSTERED INDEX IX_EJERCICIO_ENTRENAMIENTO_ejercicio_id
ON servicio.EJERCICIO_ENTRENAMIENTO (ejercicio_id);
GO

CREATE NONCLUSTERED INDEX IX_EMPLEADO_ACTIVIDAD_usuario_id
ON servicio.EMPLEADO_ACTIVIDAD (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_EMPLEADO_ACTIVIDAD_actividad_id
ON servicio.EMPLEADO_ACTIVIDAD (actividad_id);
GO

CREATE NONCLUSTERED INDEX IX_EMPLEADO_SERVICIO_usuario_id
ON servicio.EMPLEADO_SERVICIO (usuario_id);
GO

CREATE NONCLUSTERED INDEX IX_EMPLEADO_SERVICIO_servicio_cuota_id
ON servicio.EMPLEADO_SERVICIO (servicio_cuota_id);
GO

CREATE NONCLUSTERED INDEX IX_PLATILLO_DIETA_dia_semana_id
ON servicio.PLATILLO_DIETA (dia_semana_id);
GO

CREATE NONCLUSTERED INDEX IX_PLATILLO_DIETA_platillo_id
ON servicio.PLATILLO_DIETA (platillo_id);
GO

CREATE NONCLUSTERED INDEX IX_PLATILLO_DIETA_dieta_id
ON servicio.PLATILLO_DIETA (dieta_id);
GO
