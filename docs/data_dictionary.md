# Data Dictionary — Sports Club Management Database (SQL Server)

## 0) Conventions
- Objects use **schemas** to group concerns:
  - `catalogo` (reference catalogs)
  - `usuario` (users, members, employees)
  - `servicio` (activities, paid services, planning)
  - `operacion` (rentals/reservations, payments)
- Most tables use numeric identity primary keys.
- Many-to-many relationships are implemented with junction tables.
- Key integrity is enforced via PK/FK + CHECK/DEFAULT constraints and triggers.

---

## 1) Schemas and Tables

# 1.1 `catalogo` schema

### `catalogo.ALCALDIA`
Stores borough/city district catalog.
- **PK**: `alcaldia_id` (NUMERIC(2,0), IDENTITY)
- Columns: `nombre_alcaldia` (VARCHAR(40), NOT NULL)

### `catalogo.COLONIA`
Neighborhood catalog.
- **PK**: `colonia_id` (NUMERIC(10,0), IDENTITY)
- Columns: `nombre_colonia` (VARCHAR(40), NOT NULL)

### `catalogo.SEXO`
Sex/gender catalog.
- **PK**: `sexo_id` (NUMERIC(1,0), IDENTITY)
- Columns: `nombre_sexo` (VARCHAR(10), NOT NULL)

### `catalogo.DIA_SEMANA`
Days of the week catalog.
- **PK**: `dia_semana_id` (NUMERIC(1,0), IDENTITY)
- Columns: `nombre_dia` (VARCHAR(40), NOT NULL)

### `catalogo.ESTADO_ALQUILER`
Rental/reservation state catalog.
- **PK**: `estado_alquiler_id` (NUMERIC(1,0), IDENTITY)
- Columns: `estado` (VARCHAR(40), NOT NULL)

### `catalogo.INSTALACION`
Facility catalog.
- **PK**: `instalacion_id` (NUMERIC(2,0), IDENTITY)
- Columns: `capacidad` (NUMERIC(4,0), NOT NULL), `nombre` (VARCHAR(40), NOT NULL)

### `catalogo.EJERCICIO`
Exercise catalog.
- **PK**: `ejercicio_id` (NUMERIC(6,0), IDENTITY)
- Columns:
  - `nombre` (VARCHAR(40)), `descripcion` (VARCHAR(150))
  - `tipo_ejercicio` (VARCHAR(40)), `zona_corporal` (VARCHAR(40))
  - `numero_series` (NUMERIC(2,0)), `repeticiones` (NUMERIC(2,0))

### `catalogo.PLATILLO`
Dish/recipe catalog.
- **PK**: `platillo_id` (NUMERIC(10,0), IDENTITY)
- Columns:
  - `nombre` (VARCHAR(40)), `descripcion` (VARCHAR(150))
  - `horario` (VARCHAR(40))
  - `calorias_por_racion` (NUMERIC(18,0), NULL)

### `catalogo.HORARIO`
Schedule blocks.
- **PK**: `horario_id` (NUMERIC(10,0), IDENTITY)
- Columns: `lugar` (VARCHAR(40)), `hora_inicio` (TIME(7)), `hora_fin` (TIME(7))

### `catalogo.TIPO_PARENTESCO`
Kinship type catalog.
- **PK**: `parentesco_id` (NUMERIC(10,0), IDENTITY)
- Columns: `descripcion` (VARCHAR(40))

### `catalogo.PUESTO`
Job position catalog.
- **PK**: `puesto_id` (NUMERIC(4,0), IDENTITY)
- Columns: `puesto` (VARCHAR(40))

### `catalogo.HORARIO_DIA_SEMANA`
Junction between schedules and days of the week.
- **PK**: (`dia_semana_id`, `horario_id`)
- **FK**:
  - `dia_semana_id` → `catalogo.DIA_SEMANA(dia_semana_id)`
  - `horario_id` → `catalogo.HORARIO(horario_id)`

---

# 1.2 `usuario` schema

### `usuario.DIRECCION`
Address table used by web users.
- **PK**: `direccion_id` (NUMERIC(10,0), IDENTITY)
- **FK**:
  - `alcaldia_id` → `catalogo.ALCALDIA`
  - `colonia_id` → `catalogo.COLONIA`
- Columns: `calle` (VARCHAR(40)), `numero` (NUMERIC(3,0))

### `usuario.USUARIO_WEB`
Base entity for all web users (employees and members).
- **PK**: `usuario_id` (NUMERIC(10,0), IDENTITY)
- **FK**: `direccion_id` → `usuario.DIRECCION`
- Columns:
  - `tipo_usuario` (VARCHAR(1))  // user type code
  - `usuario` (VARCHAR(40))      // username
  - `contrasenia` (VARCHAR(40))  // password (stored as plain text in project scope)
  - `nombre_pila` (VARCHAR(40))
  - `apellido_paterno` (VARCHAR(40))
  - `apellido_materno` (VARCHAR(40), NULL)

### `usuario.SOCIO`
Member table (inherits from `USUARIO_WEB`).
- **PK/FK**: `usuario_id` → `usuario.USUARIO_WEB(usuario_id)`
- **FK**: `sexo_id` → `catalogo.SEXO(sexo_id)`
- **Unique**: `numero_socio`
- Columns:
  - `estatura` (NUMERIC(3,0)), `peso` (NUMERIC(3,0))
  - `fecha_nacimiento` (DATE, NULL)
  - `fecha_inicio` (DATETIME)
  - `foto` (IMAGE)
  - `meses_adeudados` (NUMERIC(1,0))
  - `estado_socio` (VARCHAR(40)) with CHECK (`'A'`, `'C'`)
  - `numero_socio` (NUMERIC(12,0))
  - `tipo_membresia` (CHAR(1)) with CHECK (`'V'`, `'E'`)

### `usuario.EMPLEADO`
Employee table (inherits from `USUARIO_WEB`).
- **PK/FK**: `usuario_id` → `usuario.USUARIO_WEB(usuario_id)`
- **Unique**: `nss` (NUMERIC(11,0))
- **FK**: `puesto_id` → `catalogo.PUESTO`
- Columns:
  - `fecha_cumpleanios` (DATE), `fecha_ingreso` (DATE)
  - `sueldo` (MONEY)
  - `abono` (BIT) with CHECK (0/1)
  - `edad` (NUMERIC(2,0), NULL)
  - `correo` (VARCHAR(40))
  - `maestro` (BINARY)

### `usuario.TELEFONO`
Multi-valued phones for users.
- **PK**: `telefono_id` (NUMERIC(18,0), IDENTITY)
- **FK**: `usuario_id` → `usuario.USUARIO_WEB`
- Columns: `telefono` (NUMERIC(10,0))

### `usuario.CORREO`
Multi-valued emails for members.
- **PK**: `correo_id` (NUMERIC(10,0), IDENTITY)
- **FK**: `usuario_id` → `usuario.SOCIO`
- Columns: `correo` (VARCHAR(40))
- Trigger enforces allowed domains.

### `usuario.PARENTESCO`
Member-to-member kinship link.
- **PK**: (`usuario_id`, `familiar_id`)
- **FK**:
  - `usuario_id` → `usuario.SOCIO`
  - `familiar_id` → `usuario.SOCIO`
  - `parentesco_id` → `catalogo.TIPO_PARENTESCO`

---

# 1.3 `servicio` schema

### `servicio.ACTIVIDAD`
Activities offered by the club.
- **PK**: `actividad_id` (NUMERIC(10,0), IDENTITY)
- **FK**:
  - `instalacion_id` → `catalogo.INSTALACION`
  - `horario_id` → `catalogo.HORARIO`
- Columns:
  - `nombre` (VARCHAR(40)), `descripcion` (VARCHAR(150))
  - `edad_requerida` (NUMERIC(2,0), DEFAULT 16)
  - `tipo` (VARCHAR(40))

### `servicio.SERVICIO_CUOTA`
Paid services/subscriptions.
- **PK**: `servicio_cuota_id` (NUMERIC(10,0), IDENTITY)
- **FK**:
  - `horario_id` → `catalogo.HORARIO`
  - `instalacion_id` → `catalogo.INSTALACION`
- Columns:
  - `nombre` (VARCHAR(40)), `descripcion` (VARCHAR(150))
  - `edad_requerida` (NUMERIC(2,0))
  - `costo` (MONEY)

### `servicio.INSCRIPCION`
Enrollments/purchases (members enrolling in activities/services).
- **PK**: `inscripcion_id` (NUMERIC(10,0), IDENTITY)
- **FK**:
  - `horario_id` → `catalogo.HORARIO`
  - `usuario_id` → `usuario.SOCIO`
- Columns:
  - `fecha_hora` (DATETIME)
  - `metodo_pago` (CHAR(1), NULL) with CHECK (`'T'`, `'E'`)
  - `estado_inscripcion` (VARCHAR(10))

### `servicio.ENTRENAMIENTO`
Member training plan per day/time window.
- **PK**: `entrenamiento_id` (NUMERIC(6,0), IDENTITY)
- **FK**:
  - `dia_semana_id` → `catalogo.DIA_SEMANA`
  - `usuario_id` → `usuario.SOCIO`
- Columns:
  - `hora_inicio` (TIME(7)), `hora_fin` (TIME(7))
- CHECK: duration <= 2 hours.

### `servicio.DIETA`
Diet plans.
- **PK**: `dieta_id` (NUMERIC(10,0), IDENTITY)
- **FK**: `usuario_id` → `usuario.SOCIO`
- Columns: `nombre_plan` (VARCHAR(40)), `fecha_creacion` (DATE)

### `servicio.EJERCICIO_ENTRENAMIENTO`
Links exercises to training plans.
- **PK**: (`entrenamiento_id`, `ejercicio_id`)
- **FK**:
  - `entrenamiento_id` → `servicio.ENTRENAMIENTO`
  - `ejercicio_id` → `catalogo.EJERCICIO`

### `servicio.EMPLEADO_ACTIVIDAD`
Links instructors (employees) to activities.
- **PK**: (`usuario_id`, `actividad_id`)
- **FK**:
  - `usuario_id` → `usuario.EMPLEADO`
  - `actividad_id` → `servicio.ACTIVIDAD`

### `servicio.EMPLEADO_SERVICIO`
Links instructors (employees) to paid services.
- **PK**: (`usuario_id`, `servicio_cuota_id`)
- **FK**:
  - `usuario_id` → `usuario.EMPLEADO`
  - `servicio_cuota_id` → `servicio.SERVICIO_CUOTA`

### `servicio.PLATILLO_DIETA`
Links dishes to diet plans and days of week.
- **PK**: (`platillo_id`, `dieta_id`)
- **FK**:
  - `platillo_id` → `catalogo.PLATILLO`
  - `dieta_id` → `servicio.DIETA`
  - `dia_semana_id` → `catalogo.DIA_SEMANA`

---

# 1.4 `operacion` schema

### `operacion.ALQUILER`
Reservations/rentals (time slots).
- **PK**: `alquiler_id` (NUMERIC(10,0), IDENTITY)
- **FK**:
  - `usuario_id` → `usuario.SOCIO`
  - `estado_alquiler_id` → `catalogo.ESTADO_ALQUILER`
- Columns:
  - `fecha` (DATETIME), `hora_inicio` (TIME(7)), `hora_fin` (TIME(7))
  - `numero_personas` (NUMERIC(3,0))
- CHECK: duration exactly 1 hour.

### `operacion.ALQUILER_INSTALACION`
Links a rental to a facility.
- **PK**: `alquiler_instalacion_id` (NUMERIC(18,0), IDENTITY)
- **FK**:
  - `alquiler_id` → `operacion.ALQUILER`
  - `instalacion_id` → `catalogo.INSTALACION`

### `operacion.HISTORICO_ALQUILER`
Tracks rental state changes.
- **PK**: (`alquiler_id`, `estado_alquiler_id`)
- **FK**:
  - `alquiler_id` → `operacion.ALQUILER`
  - `estado_alquiler_id` → `catalogo.ESTADO_ALQUILER`
- Columns:
  - `fehca_hora` (DATETIME)  // note: field name includes a typo in the implementation

### `operacion.MATERIAL`
Materials associated with a facility reservation.
- **PK**: `material_id` (NUMERIC(10,0), IDENTITY)
- **FK**: `alquiler_instalacion_id` → `operacion.ALQUILER_INSTALACION`
- Columns: `nombre` (VARCHAR(40)), `total_unidades` (NUMERIC(6,0))

### `operacion.PAGO`
Member payments.
- **PK**: (`numero_pago`, `usuario_id`)
- **FK**: `usuario_id` → `usuario.SOCIO`
- Columns:
  - `cuota` (MONEY), `fecha` (DATETIME)
  - `metodo_pago` (VARCHAR(13)) with CHECK (`'T'`, `'E'`)
  - Card/bank metadata: `banco`, `mes_vigencia`, `anio_vigencia`, `numero_tarjeta` (nullable)
- CHECK: `DAY(fecha) BETWEEN 1 AND 5`
- Trigger enforces fixed fee logic and updates delinquency fields.

---

## 2) Views
### `usuario.vis_entrenamientos_socio`
Shows member identifiers plus assigned exercises per day (includes non-assigned exercises via RIGHT JOIN pattern).

### `servicio.vis_datos_servicio_cuota`
Shows paid service details with installation, schedule, and day of week; includes services not assigned to a day via LEFT JOINs.

### `operacion.vis_instalacion_material`
Lists facilities and associated materials.

---

## 3) Stored Procedures (Core)
### Service / Operations
- `servicio.registraCompraServicioCuota` (enroll member in paid service; returns cost via OUTPUT)
- `servicio.registraCompraActividad` (enroll member in an activity)
- `servicio.registraDietaSocio` (create diet plan and auto-fill 7 dishes)
- `servicio.registraEntrenamientoSocio` (create training plan and auto-assign exercises)
- `servicio.registraActividad` (register a new activity)
- `servicio.registraServicioCuota` (register a new paid service)
- `usuario.busquedaSocio` (search members by name/last names with optional parameters)

### Reporting
- `reporteIngresosUsuario`
- `top5ActividadesMes`
- `top5ActividadesVendidasPorRangosFechas`
- `top30socios`
- `top5MenosSolicitadas`
- `reporte_cumpleanios`
- `actividadesHorariosProfesores`
- `reporteCuotasMensuales`
- `reporteNuevosSocios`
- `reportePagosSocios`

---

## 4) Functions
- `usuario.calcularEdad(DATE) -> INT`
- `usuario.diasRestantesPago(DATE) -> INT`

---

## 5) Triggers
- `usuario.tr_empleado`: enforces minimum tenure (>= 5 years) before enabling `abono`.
- `usuario.tr_correo`: validates email domains (`@gmail.com`, `@hotmail.com`, `@club.com`) on INSERT/UPDATE.
- `operacion.tr_pago`: validates payment amount and updates `meses_adeudados` and `estado_socio` based on INSERT/DELETE/UPDATE events.

---

## 6) Security Objects
- Roles: `administrador`, `empleado`, `socio`
- Schema-level permissions granted by role.
- `procAltaUsuario`: utility to create login/user and assign role.

---

## 7) Notes / Known Implementation Details
- Some status code semantics (e.g., `estado_socio`) should be aligned consistently between constraints and trigger updates.
- Field `operacion.HISTORICO_ALQUILER.fehca_hora` contains a typo in the column name (kept as implemented).