# ABAP Virtual Element

This repository contains examples and implementation details for using **ABAP Virtual Elements** in ABAP CDS Views (Core Data Services) within the SAP ABAP RAP (RESTful Application Programming Model) and OData services context.

## Overview

Virtual elements in ABAP CDS views allow you to add calculated or derived fields to a CDS projection or definition without persisting them in the database. These values are computed at runtime using ABAP code (specifically via the `ABAP_VIZ` / `IF_SADL_EXIT_VIRTUAL_ELEMENT` interface).

## Key Features

- **No Database Footprint**: Fields are calculated dynamically on the fly during runtime queries.
- **RAP Integration**: Fully compatible with SAP RAP for OData V2 and V4 services.
- **Performance Optimization**: Supports calculation on the result set to minimize overhead.

## Implementation Steps

1. **Create a CDS Projection View** containing the virtual element definition:
   ```abap
   @ObjectModel.virtualElement: true
   @ObjectModel.virtualElementCalculatedBy: 'ZCL_VIRTUAL_ELEM_EXIT'
   cast( null as abap.char( 50 ) ) as CalculatedField
   ```

2. **Implement the Exit Class** by implementing the interface `IF_SADL_EXIT_VIRTUAL_ELEMENT`:
   - `CALCULATE`: Populates the virtual element values based on the source records.
   - `GET_CALCULATION_INFO`: Specifies which source fields are needed for the calculation.

## Repository Structure

- `src/`: Contains CDS views and ABAP class implementations.
- `README.md`: Project documentation.
