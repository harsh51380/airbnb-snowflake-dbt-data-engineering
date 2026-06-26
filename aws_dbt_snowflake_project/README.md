# Airbnb Data Engineering Pipeline using Snowflake & dbt

> A modern ELT pipeline built with **dbt** and **Snowflake** that transforms raw Airbnb data into analytics-ready datasets using incremental models, reusable Jinja macros, and modular SQL transformations.

---

## Project Overview

This project demonstrates how to design and implement a scalable data transformation pipeline following modern analytics engineering practices.

Raw Airbnb datasets are ingested into Snowflake and transformed through layered dbt models using the **Bronze** and **Silver** architecture. The project emphasizes modular SQL development, incremental processing, reusable Jinja macros, and maintainable project organization.

---

## Architecture

```text
                Airbnb Source Data
                        │
                        ▼
              Snowflake Source Tables
                        │
                        ▼
             Bronze Layer (Raw Models)
        • Incremental Loading
        • Minimal Transformations
        • Data Standardization
                        │
                        ▼
          Silver Layer (Business Models)
        • Data Cleaning
        • Feature Engineering
        • Business Logic
        • Derived Attributes
                        │
                        ▼
             Analytics Ready Tables
```

---

## Technology Stack

| Category        | Technologies |
| --------------- | ------------ |
| Data Warehouse  | Snowflake    |
| Transformation  | dbt Core     |
| Language        | SQL, Jinja   |
| Version Control | Git, GitHub  |
| Development     | VS Code      |

---

## Project Structure

```text
aws_dbt_snowflake_project
│
├── analyses/
├── macros/
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
├── packages.yml
├── profiles.yml.example
└── README.md
```

---

## Data Pipeline

### Bronze Layer

The Bronze layer ingests raw source tables into Snowflake using **incremental dbt models** while preserving the original structure.

Models:

* bronze_bookings
* bronze_hosts
* bronze_listings

---

### Silver Layer

The Silver layer enriches and standardizes the Bronze data by applying business logic and transformations.

Implemented transformations include:

* Incremental processing
* String standardization
* Data categorization
* Business rule implementation
* Calculated metrics
* Custom SQL macros

Models:

* silver_bookings
* silver_hosts
* silver_listings

---

## Key Features

* Incremental ELT pipelines
* Modular dbt project structure
* Custom Jinja macros
* Reusable SQL components
* Dynamic SQL generation
* Snowflake-native transformations
* Layered data architecture
* Git version control

---

## Custom Macros

### multiply()

Reusable macro for performing parameterized arithmetic calculations.

### tag()

Classifies property prices into business-friendly categories:

* Low
* Medium
* High

---

## Running the Project

### Install dependencies

```bash
dbt deps
```

### Compile models

```bash
dbt compile
```

### Execute all models

```bash
dbt run
```

### Execute a specific model

```bash
dbt run --select silver_bookings
```

### Perform a full refresh

```bash
dbt run --full-refresh
```

### Execute tests

```bash
dbt test
```

---

## Repository Setup

Clone the repository

```bash
git clone https://github.com/<your-username>/airbnb-snowflake-dbt-project.git
```

Move into the project

```bash
cd airbnb-snowflake-dbt-project
```

Create a local **profiles.yml** using the provided **profiles.yml.example**.

Install dependencies

```bash
dbt deps
```

Run the project

```bash
dbt run
```

---

## Skills Demonstrated

* Analytics Engineering
* Data Warehousing
* Incremental Data Loading
* ELT Pipeline Development
* SQL Optimization
* Data Modeling
* Snowflake
* dbt Core
* Jinja Templating
* Git & GitHub

---

## Future Improvements

* Gold Layer dimensional models
* Data quality tests
* Automated documentation
* CI/CD pipeline using GitHub Actions
* Scheduled dbt jobs
* Data lineage visualization

---

## Security

Sensitive configuration files such as **profiles.yml** are intentionally excluded from version control.

A sample configuration file (**profiles.yml.example**) is included to simplify local setup while protecting credentials.

---

## Author

**B.Harshvardhan Sai**

Computer Science Engineer | Data Engineering & Analytics Enthusiast | AIML Enthusiast

* GitHub: [https://github.com/](https://github.com/harsh51380)[harsh51380](https://github.com/harsh51380)
* LinkedIn: [https://linkedin.com/in/](https://linkedin.com/in/26harshvardhan)[26harshvardhan](https://linkedin.com/in/26harshvardhan)
