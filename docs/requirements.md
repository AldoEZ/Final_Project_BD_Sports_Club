# Requirements — Sports Club Management Database

## 1) Overview
A sports club wants a web application backed by a relational database to manage memberships, reservations (facilities/materials), paid services, and member planning (training and diet). The system must also generate operational reports and statistics for staff decision-making.

## 2) Users and Roles
### 2.1 User types
- **Employee**: manages club operations (members, facilities, services, reservations) and consumes reporting/analytics.
- **Member (Socio)**: manages membership-related actions, requests reservations/services, and uses diet/training planning.

### 2.2 Access control (RBAC)
- The database must support role-based access to objects and actions:
  - **administrador**: full access to all schemas/objects.
  - **empleado**: read catalog/user data; manage services and operations with limited write access.
  - **socio**: read catalog and service information; execute service procedures.

## 3) Functional Requirements
### A. Member management
- Create, update, and deactivate members.
- Store member personal data, contact details, address, and optional birth date.
- Track membership start date, membership type, unique member number, and payment status (current vs. in arrears).
- Optional tracking of family relationships among members.

### B. Club resources management
- Manage **facilities** (capacity, name).
- Manage **materials** associated with facility usage (name, total units).
- Manage **activities/services** including:
  - name, description, required age (default 16 if not specified),
  - whether it is a paid service (service fee) or activity,
  - installation and schedule information,
  - instructors/professors assignment (many-to-many).

### C. Web access / authentication data
- Both employees and members must have a web account (username + password).
- Store user type: admin/employee/member.

### D. Reporting and analytics
The system must support queries/procedures to generate:
- Daily ingress report (member, earliest entry, latest exit, count of entries) for a date or date range.
- Top activities/services requested for a month/year and for arbitrary date ranges.
- Top 30 members by purchases/inscriptions.
- Least requested activities.
- Birthday list of members.
- Activities with schedules and instructors.
- Monthly revenue report for paid services.
- New members in a month/year and their membership costs.
- Monthly member payments.

### E. Training planning
- Store training plans per member by day of week.
- Each day’s training has start/end time with a constraint that a member cannot exceed **2 hours/day**.
- Store exercises and link exercises to a training plan.

### F. Diet planning
- Store diet plans per member.
- Register dishes/recipes; link dishes to days of the week within a diet plan.
- Track dish calories per serving (optional).

## 4) Non-Functional Requirements
- **Security & privacy**: enforce least-privilege access and private authentication data.
- **Fault tolerance**: prevent invalid operations (e.g., invalid payments, invalid emails) using database constraints/triggers.
- **Usability**: data should be organized to support simple UI flows (search member, create reservation, enroll in service).
- **Clarity of reports**: reporting outputs must be consistent and easily readable.
- **Performance**: ensure responsive access for common lookups (indexes on FKs and key query paths).

## 5) Business Rules (Database-Enforced)
- Reservations are **exactly 1 hour** (time constraint).
- Training duration must be **<= 2 hours** per day.
- Payments must be made within days **1–5** of the month (date constraint).
- Fixed monthly fee validation for payments is enforced via trigger logic.
- Employee bonus (“abono”) can be enabled only if the employee has **>= 5 years** of tenure (trigger).
- Email format constraints: allow only specific domains (trigger).
- Membership delinquency is tracked via months-in-arrears and updated based on payment events (trigger).
- Default minimum age for activities is **16** if not specified (default).

## 6) Assumptions / Notes
- The database is designed as the backend for a web app; UI and API layers are out of scope for this repo.
- Some status fields are represented with compact codes (e.g., CHAR/VARCHAR codes); meanings should be standardized across layers.
- Seed data is provided for demo/testing purposes and does not represent production data.

## 7) Deliverables (What this repo includes)
- Schema (tables, PK/FK, CHECK/DEFAULT constraints, indexes).
- Stored procedures, views, triggers, scalar functions.
- Reporting stored procedures.
- Seed data for initial population.
- Trigger validation scripts (automated tests).
- Project documentation (report + diagrams).