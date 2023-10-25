# End to End Workflow Creating Database and Connecting to Power BI

**Project Overview:**  
This project was aimed at enhancing my expertise in SQL (with a special focus on Microsoft SQL Server), Azure Cloud and Services, Power BI, Database Schemas, Normalization, and the two distinct data processing systems: Online Transaction Processing (OLTP) and Online Analytical Processing (OLAP).

**First Step: Designing the Schema**

**What I Did:**  
I initiated the project by identifying my requirements and establishing a clear end goal for the database, which guided the design of an appropriate database schema. I chose to conceptualize a fictional e-commerce company, noting down the necessary attributes, tables, and relationships. To visualize the database schema, I utilized the dbdiagram tool. The steps followed were:

1. **Data Requirements:** Understanding the data, relationships between different entities, and system requirements.
2. **Define Tables:** Creating a new diagram to define tables, fields, and data types.
3. **Define Relationships:** Establishing relationships between tables using primary and foreign keys.
4. **The Visual Check:** Utilizing visualization to arrange tables and relationships, providing an additional layer of discrepancy checking.

[e-commerce Database Schema](https://github.com/Akiwacky/DB-to-BI-Workflow/blob/main/Images/ecomm%20version%203.png)

**What I Learned:**  
The visualization process, both on paper and with dbdiagram, was invaluable. It provided a clear schema view, enabling early identification and resolution of potential issues, and streamlined database creation. This stage also offered practical normalization experience, enhancing my theoretical understanding and ability to optimize database schemas for 3NF (Third Normal Form).

**Database Creation:**

**What I Did:**  
I initially used SQL to script the database, tables, and relationships. However, as I delved deeper into Azure Data Studio, I discovered the PROSE (Program Synthesis Using Examples) framework via the SQL Server Import extension. This tool simplified the process of creating tables, importing data, and setting primary keys. The prerequisite was to create the database to house the data, after which I could import the relational tables. While this method bypassed manual syntax writing for database, table, and relationship creation, it had limitations—for instance, it couldn’t implement preventive measures like checks for negative product prices or future order dates. Nonetheless, these checks could be performed beforehand (I generated synthetic data in a Jupyter notebook where checks were applied within Python), or afterward, such as during data inspection in Power BI or writing data quality scripts to check the data.

**Steps:**  
- Installation of SQL Server Import extension in Azure Data Studios
- Server connection and database creation
- Utilizing Import Wizard for data importation
- Data integrity checks and query performance to ensure a successful import

**What I Learned:**  
The shift from SQL scripting to using SQL Server Import extension streamlined the database creation process, though it necessitated changes in how I applied preventive measures and managed foreign keys. Script tests & altering table post-data loading ensured data accuracy & intergrity.


**Populating the Database:**

**What I Did:**  
I utilized the Python package Faker to generate synthetic data for the database, performing this task in an Azure Data Studio Notebook. All tables were created as data frames and then converted to CSV for upload via the SQL Server tool.

[Python Script](https://github.com/Akiwacky/Faker-Database)

**What I Learned:**  
Faker proved efficient for swift generation of a substantial amount of synthetic data, showcasing its utility in creating mock data for projects like this.


**Complex Queries to Build an OLAP:**

**What I Did:**  
Despite the possibility of transforming the OLTP database directly into an OLAP database and star schema in Power BI, I opted to perform this transformation in SQL. This choice was driven by a desire to enhance my data manipulation skills and to work more closely with Microsoft SQL Server. I used dbdiagram to rearrange the database schema into a star schema with a single Fact Table, and created a new database schema conforming to OLAP and star schema conventions for a simplified data analysis in Power BI.

[SQL Script](https://github.com/Akiwacky/FakerOLAP)

[OLAP Star Schema](https://github.com/Akiwacky/DB-to-BI-Workflow/blob/main/Images/ecomm%20star%20schema.png)

**What I Learned:**  
This stage offered valuable practice in subqueries and understanding the transition between OLTP and OLAP systems. I gained deeper insights into the differences between OLTP and OLAP, learning that normalization is less critical in OLAP where the focus is on data analysis.

**Azure Integration / Migration:**

**What I Did:**  
With the database now in OLAP form, my next step was to upload it to the cloud and fetch the data via Power BI. Azure Data Studio provided a migration workflow for connecting to Azure Database and migrating the database.

**Steps:**  
- Setting up Azure Data Studio with the required extension
- Using Azure Database Migration Service for orchestrating migration pipelines
- Employing a self-hosted integration runtime for connections
- Exporting the schema of your database as a dacpac file to local machine
- Connecting to target and importing dacpac file to Azure Database

**What I Learned:**  
Opting to enhance my expertise with Azure over using a Power BI gateway for database integration, I created a SQL database in the Azure portal and deployed my OLAP database to the cloud. This experience emphasized the benefits of working within the Microsoft ecosystem, especially for Microsoft-related projects.

**Connecting to Power BI:**

**What I Did:**  
Following the Azure integration, I easily connected to Power BI by linking it to the Azure SQL database and providing the necessary server name, database, and authentication information.

**What I Learned:**  
This project enhanced my skills in cloud database integration, providing a comprehensive end-to-end workflow experience.

**Data Visualization:**

**What I Did:**  
In Power BI, I transformed specific data fields, created a separate date table for comprehensive time series analysis, verified relationships in the model tab, and proceeded to create various visualizations.

[BI Model](https://github.com/Akiwacky/DB-to-BI-Workflow/blob/main/Images/Power%20Bi%20Model.png)
[Overview](https://github.com/Akiwacky/DB-to-BI-Workflow/blob/main/Images/Overview.png)
[Sales Analysis](https://github.com/Akiwacky/DB-to-BI-Workflow/blob/main/Images/Sales%20Report.png)
[Customer Anaylsis](https://github.com/Akiwacky/DB-to-BI-Workflow/blob/main/Images/Customer%20Analysis.png)


**What I Learned:**
This phase reinforced my existing skills in data visualization and Power BI.

**Conclusion:**

Throughout this project, I played multiple roles: Database Administrator, Data Engineer, and Data Analyst. This experience provided valuable insights into how these roles complement each other and highlighted the importance of a holistic understanding of the end-to-end data workflow. It was an excellent opportunity to solidify my skills in these areas, providing a rewarding experience from start to finish.







