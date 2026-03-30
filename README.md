# Sports Club Management Database (SQL Server)

A relational database project for managing a sports club’s core operations: memberships, facility/equipment reservations, paid services, training/diet planning, and management reporting.

---

## Highlights

- **Normalized relational model** organized by schemas: `catalogo`, `usuario`, `servicio`, `operacion`
- **Business rules enforced in the database** using constraints + triggers (payments, email validation, employee bonus rules, time limits)
- **Stored procedures and views** for common workflows (enrollments, training/diet generation, searches)
- **Reporting procedures** for management analytics (top activities, payments, new members, usage/ingress)
- **Role-based access control (RBAC)** with `administrador`, `empleado`, `socio`
- **Automated trigger validation** script using transactions and TRY/CATCH (safe to run; rolls back changes)

---

## Tech Stack

- **Microsoft SQL Server** (T-SQL)
- Recommended tooling: **SQL Server Management Studio (SSMS)**

---

## Repository Structure

```text
Final_Project_BD_Sports_Club/
  README.md
  
  docs/
    ProjectReport.pdf
    requirements.md
    data_dictionary.md
    images/
      er-diagram.png
      relational-model.png
  
  models/
    conceptual/
      12equipo_clubdeportivo.DM1
      12equipo-club_deportivo.dia
    logical/
      relational_model.png
  
  sql/
    00_security/
      seguridad.sql
    01_schema/
      creaBase.sql
    02_objects/
      dml.sql
    03_seed/
      cargaInicial.sql
    04_reports/
      informes.sql
    05_tests/
      validaTriggers.sql