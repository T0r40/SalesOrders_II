# Sales Orders CAP Application

## Project Overview

This project implements a Sales Orders management application using the SAP Cloud Application Programming Model (CAP) with Node.js.

The objective of this application is to provide a browser-based SAP Fiori Elements application for managing sales orders and their related items. The application exposes an OData V4 service built with CAP and uses a Fiori Elements List Report Object Page as the user interface.

This project represents the CAP version of the Sales Orders final project. It follows a service-oriented architecture where the data model is defined using CDS, the business service is exposed through CAP, and custom business logic is implemented in JavaScript.

---

## Business Scenario

The application is designed to manage sales orders using a header-item structure.

A sales order header stores general customer and delivery information, while each sales order can contain multiple items. Users can list all sales orders, navigate to the detail page of a specific order, and display or maintain the related item data.

The main business capabilities implemented are:

- Display sales orders in a SAP Fiori Elements List Report.
- Navigate from a sales order to its Object Page.
- Display sales order header information.
- Display related sales order items.
- Create new sales orders.
- Update existing sales orders.
- Delete sales orders.
- Maintain items related to a sales order.
- Validate mandatory fields using JavaScript service handlers.
- Expose the data through an OData V4 service.

---

## Technologies Used

The application was implemented using the following technologies:

- SAP Business Technology Platform, BTP
- SAP Business Application Studio
- SAP Cloud Application Programming Model, CAP
- Node.js
- CDS Data Modeling
- CAP Service Definition
- JavaScript Service Handlers
- OData V4
- SAP Fiori Elements
- List Report Object Page
- SQLite for local development
- Git and GitHub

---

## Data Model

The application uses a header-item data model.

The main entity is `SalesOrders`, which represents the sales order header. The child entity is `SalesOrderItems`, which represents the items assigned to a sales order.

The relationship between both entities is modeled as a CAP composition:

```text
SalesOrders
    └── SalesOrderItems
