# MIS311 Database Project — Plant Maintenance & Work Order Management System

## Project Overview

This project was completed as part of the MIS 311 – Business Data Management course. The objective is to design and implement a relational database system that supports maintenance operations within an industrial plant environment.

The project focuses on translating operational requirements into a structured database design, including entity modeling, normalization up to Third Normal Form (3NF), and SQL implementation. The system enables efficient management of maintenance activities, equipment tracking, technician assignments, and spare parts usage.

---

## Objectives

* Design a structured relational database based on defined business rules  
* Apply normalization techniques up to 3NF to eliminate redundancy  
* Implement the database using SQL (DDL and DML)  
* Develop queries to support operational decision-making  

---

## System Description

The system models maintenance operations within a plant where equipment is organized by plant areas and requires periodic or corrective maintenance.

When maintenance is required:

* A work order is created for a specific equipment  
* The work order is classified by a maintenance type (e.g., preventive, corrective)  
* One or more technicians are assigned to perform the task  
* Spare parts may be used during maintenance  
* Parts are supplied by external suppliers  

The system supports tracking of:

* Equipment maintenance frequency  
* Technician assignments and workload  
* Spare parts usage and consumption  
* Inventory levels and shortages  
* Work order status and progress  

---

## Assumptions

* Each equipment belongs to a single plant area  
* Each work order is associated with one equipment  
* Each work order has one maintenance type  
* Technicians can be assigned to multiple work orders  
* Work orders can involve multiple technicians  
* Work orders can use multiple parts  
* Parts can be used across multiple work orders  
* Each part is supplied by one supplier  
* Inventory is tracked at a basic level without historical logs  

---

## Business Rules

* A plant area can contain multiple equipment units  
* Each equipment belongs to one plant area  

* Equipment can have multiple work orders  
* Each work order is linked to one equipment  

* Each work order must have a maintenance type  
* Maintenance types can apply to multiple work orders  

* Work orders and technicians have a many-to-many relationship  
  * Implemented through the associative entity: **WorkOrderAssignment**  

* Work orders and parts have a many-to-many relationship  
  * Implemented through the associative entity: **WorkOrderPart**  

* Each part is supplied by one supplier  
* Suppliers can supply multiple parts  

* Each work order has a status (e.g., Open, In Progress, Completed)  
* Each part tracks quantity on hand and minimum required quantity  

---

## Data Modeling Approach

The database design process followed these steps:

* Identification of entities and attributes  
* Definition of relationships and cardinalities  
* Resolution of many-to-many relationships using associative tables  
* Normalization of all relations up to 3NF  
* Creation of a functional dependency structure  

---

## Database Implementation

The database was implemented using SQL and includes:

* Table creation using **CREATE TABLE** statements  
* Definition of primary and foreign key constraints  
* Data insertion using **INSERT statements**  
* Enforcement of referential integrity  

---

## SQL Queries

The system includes queries designed to support operational insights:

* Retrieve open work orders and their locations  
* Count work orders by maintenance type  
* Calculate total parts cost per work order  
* Identify equipment with the highest maintenance frequency  
* Detect parts below minimum inventory levels  

---

## Tools and Technologies

* SQL (Oracle / FreeSQL)  
* Database Design (ERD, Normalization up to 3NF)  
* diagrams.net (ERD and functional dependency diagrams)  
* Git & GitHub (version control and project organization)  

---

## Conclusion

This project demonstrates the application of database design principles to a realistic operational scenario. By structuring data into normalized relations and implementing it using SQL, the system ensures data integrity, reduces redundancy, and supports efficient maintenance management.

The resulting database provides a solid foundation for tracking maintenance activities and generating insights that can improve operational performance within an industrial environment.
