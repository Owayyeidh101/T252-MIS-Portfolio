# Project Overview

This project designs a relational database for a **Plant Maintenance & Work Order Management System**. The system is intended to support maintenance operations in an industrial plant environment by organizing data related to equipment, maintenance activities, technicians, and spare parts.

The database enables efficient tracking of:

- Equipment and their locations within the plant
- Maintenance work orders and their status
- Technician assignments
- Spare parts usage and inventory
- Maintenance types and classifications

The goal is to design a normalized database (up to **3NF**) and implement it using SQL, along with meaningful queries that support operational decision-making.

---

# System Description

The system represents a structured approach to managing maintenance operations within a plant. Each piece of equipment is located in a specific plant area and may require maintenance over time.

When an issue occurs or maintenance is scheduled:

- A work order is created for a specific piece of equipment
- The work order is categorized by a maintenance type (e.g., preventive, corrective)
- One or more technicians are assigned to the work order
- The work order may require multiple spare parts
- Spare parts are supplied by suppliers

The system allows tracking of:

- Which equipment is frequently maintained
- Which technicians are assigned to tasks
- What parts are used and when
- Inventory levels of parts
- Status of maintenance activities

This structured database design helps reduce manual tracking errors and improves visibility into plant operations.

---

# Assumptions

- Each equipment belongs to only one plant area
- Each work order is created for one specific equipment
- Each work order has one maintenance type
- A technician can work on multiple work orders
- A work order can have multiple technicians
- A work order can use multiple parts
- A part can be used in multiple work orders
- Each part is supplied by one supplier
- Each supplier can supply multiple parts
- Inventory tracking is simplified (no historical stock tracking)

---

# Business Rules

1. Each **plant area** can contain many pieces of equipment.
2. Each **equipment** belongs to exactly one plant area.

3. Each **equipment** can have many work orders.
4. Each **work order** is created for exactly one equipment.

5. Each **work order** must have one maintenance type.
6. Each **maintenance type** can be associated with many work orders.

7. Each **work order** can be assigned to one or more technicians.
8. Each **technician** can work on one or more work orders.
   → This represents a **many-to-many relationship** resolved using an associative entity (**WorkOrderAssignment**).

9. Each **work order** can use one or more spare parts.
10. Each **part** can be used in one or more work orders.
   → This represents another **many-to-many relationship** resolved using an associative entity (**WorkOrderPart**).

11. Each **part** is supplied by exactly one supplier.
12. Each **supplier** can supply many parts.

13. Each **work order** has a status (e.g., Open, In Progress, Completed).

14. Each **part** has a quantity on hand and a minimum required quantity for inventory control.

---

# Main Entities (Planned)

- PlantArea
- Equipment
- WorkOrder
- MaintenanceType
- Technician
- WorkOrderAssignment (Associative)
- Part
- WorkOrderPart (Associative)
- Supplier

---

# Project Scope

This project includes:

- ERD design (conceptual + logical)
- Normalization up to 3NF
- Functional dependency diagram
- SQL table creation scripts
- Sample data insertion
- SQL queries for operational insights

This project does **not** rely on a real business or interviews and is based on a structured, assumed operational scenario.
