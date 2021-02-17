 # SQL DB Migration

This was a DB migration project where we reviewed legacy files and identified relationships that needed to be created and constraints that needed to be put in place to maintain the data integrity. A script was executed to design the outlined schema to host the data in a Postgre SQL database, the legacy files were then imported into the database. After the database creation and importing was complete, another scripted was used to draw deeper exploratory insights. Lastly, we created a connection using python's sqlalchemy library to expand the number of apps the data will be available to for export and analysis.


###### Table Schema
![Top 10](https://github.com/samuelokunola326/SQL-DB-Migration/blob/main/Table_Schema/QuickDBD-export.png)

Being that the data structure isn't complex a star schema was used to maximize performance since it is likely most of the queries will be simple.Used Quick DBD web tool to create a diagram to visually present the designed schema of the DB for stakeholder consumption.