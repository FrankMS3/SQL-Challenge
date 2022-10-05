# SQL-Challenge
Performing Data Modelling, Data Engineering, and Data Analysis of employee data using SQL.  
  
ERD.png is an image of the Entity-Relationship Diagram of the tables, data is located in .csv files in the "data" folder, queries are located in .sql files in the "Queries" folder.  
Bonus.ipynb contains script for importing the SQL database into Pandas, creating a histogram of the most common salary ranges for employees, and creating a bar chart of average salary by title. Note that a config.py file will be needed for this section, instructions for this are included below.  
    
To get started:  
Create a database in PostgreSQL named "SQL-Challenge".  
Run the queries contained within "table_schema.sql" to create the empty tables which data will be imported into.  
Import data from the .csv files located in the "data" folder into their corresponding tables, accounting for headers (see guide at end of readme if having errors importing data).  
The optimal import order should be: titles, employees, departments, dept_emp, salaries, dept_manager  
View ERD.png if you would like an overview of how the tables are linked.  
  
Once the database is setup:  
The "queries.sql" file, located in the "Queries" folder, contains the code for analysing this data.  
Highlight and run each segment individually to generate the necessary lists of data.  
  
For visualisation of data:  
In order to run Bonus.ipynb, you will need to create a file named "config.py" within the EmployeeSQL folder (in the same directory as Bonus.ipynb), in this file you will need to input your PostgreSQL password in the following format: password = "ENTER YOUR PASSWORD HERE"  
If you don't have a password, then disregard the previous sentence, but before running be sure to delete "postgres:{password}@" from the create_engine line.  
Run all the code within Bonus.ipynb in order, it will output two figures.  
  
---------------------------------------------------------------------------------  
  
If having errors importing data in pgAdmin:  
In pgAdmin:  
1: Right click on database and select properties.  
2: In properties, go into parameters  
3: Choose 'Datestyle' in Name  
4: In Value, type 'MDY'  
5: Choose postgres in Role  
6: Save it and then import the table, you'll not get any error  
