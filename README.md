# SQL Data Dive

Welcome to **SQL Data Dive** – your repository for challenging yourself with SQL and honing your data exploration skills. This repository is designed to provide a hands-on approach to learning SQL, using real-world data and gradually increasing task complexity.

## Overview

SQL is a powerful tool that enables you to perform many functions at high efficiency and speed. With a syntax that aims to be logical from a human perspective, SQL allows you to explore and manipulate data stored in relational databases. In this repository, you'll find everything you need to start your SQL journey, from setting up your database to executing increasingly challenging queries.

## Repository Structure

- **1_database/**  
  Contains the `publications_dump.sql` file. This database dump includes:
  - **Database (Schema) Creation:** SQL statements to create the database.
  - **Table Definitions:** Create all the tables, defining columns, data types, and relationships (primary & foreign keys).
  - **Data Insertion:** Populate the tables with sample data.

- **2_SQL_Scripts/**  
  A collection of SQL scripts that are organized by challenge level. These scripts are designed to:
  - Give you practical experience with database management systems.
  - Gradually increase the complexity of tasks to build your confidence in running SQL queries.

## How to Use This Repository

### Prerequisites

- **MySQL Workbench:** Download and install [MySQL Workbench](https://www.mysql.com/products/workbench/).
- **MySQL Server:** Ensure you have a local MySQL server running on your computer.
- **Basic SQL Knowledge:** Familiarity with SQL syntax and commands is helpful, but this repository is also a great place to learn!

### Setup Instructions

1. **Download the Repository:**  
   Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/SQL-Data-Dive.git

2. **Unzip and Import the Database:**

- Navigate to the `1_database` folder.
- Unzip the `publications_dump.sql` file if necessary.
- Open MySQL Workbench and connect to your local MySQL server instance (you will need the root password set during installation).
- From *Server*, use the *Import* feature by choosing the "Import from Self-Contained File" option and selecting `publications_dump.sql`.
- Refresh your Schemas panel to see your newly imported database.

3. **Explore the SQL Scripts:**

- Move to the `2_SQL_Scripts` folder.
- Start with the simpler scripts in the `2_SQL_Scripts` folder in order to familiarize yourself with basic query operations.
- Each script includes comments and instructions to help you understand the purpose and solution approach for each challenge.
- Progress to the more advanced scripts as you build confidence in your SQL skills.
