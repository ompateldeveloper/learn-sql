# SQL
Structured QUery Language is language to make modification in databse, we can perfiorm CRUD operatrion using Databses.
## Advantages
- Sharing : we can us this on different platform.
- Security : There is Access Control Level , role based access to database.
- Removes data inconsistancy: as we are using same database for all applications there is no inconsistency.
## Classification of Database
1. Based No of Users:
   - Single User Database : only one user in database , runs on pc
   - Multi-User Dtabase : Multiple users can access same database ex. workgroup or enterprise database
2. Based on Location:
   - Centralized Database : Located at single location
   - Distributed Database : distributed over different location
   - Operational Database : supports company's day-to-day operations,Transactional or production database.
   - Data warehouse : Stores Data for tactial or Strategic descisions
3. Based on structure:
   - Structured: Defined rules for storing, data stored in structure manner, ex. specific data in the form of numbers, types and names and stuff.
   - Unstructured: Undefined database in the form of Binary Files, like Videos, Images, Txt files etc.
   - Semi-Structured: I has both defined rules but it also stores Binary data files or Metadata realted to it.
   - XML: Extensible markup Language, It is Tag Description language, Represent Data in Tag format like html , this supports semi-structured database system
## Data Modal 
Data is stored through means of predefined proper models.
   Types:
   - Record Based Data Model : It has fixed no of fields in table ex. RDBMS,DBMS
        - File Management System : sequential data stored in file like excel or csv, cons: data is not indexed,no security
        - Hierarchical model : collection of records in hierarchical manners. Transactional database subscribes toMaster database. cons: Redunduncy
        - Network Model : It has nework of database , basically like pointers in programming.
        - Relational Model (RDBMS) : Best Adopted model so far . pros: security, accesability.
   - Object Based Data Model : Everythig is based on the objects thats are defined as models. ex. MongoDB, Cassandra

## Terminologies in Database
1. Database : collection of Tables
2. Table : Collection of Tuples and Attributes
3. Attribute : Acolumn of Table
4. Tuple : Row Of table
## Normalization in database
   1. 1st normal form:
      - Each table has primary key
      - All values should be atomic
      - two columns should not store same info in same table
   2. 2nd normal form
      - 1st NF should be satisfied
      - Nessccary redundent data should be moved to a Seperate table, These tables should be related to each other using Foregin Key
   3. 3rd normal form:
      - 2nd NF should be satisfied 
      - eliminate fields which do not depend on primary key
## Codd's Rules
  - Information Rule : Every table should have valid MetaData and rows & columns should strictly unordered.
  - Guranteed Access : Each piece of data should be accesible by TableName, PrimaryKey, Attribute
  - Systematic Treatment of NULL :
  - Active On-Line Catalog : every database must have catalog table , info of every table should be stored in it.
  - Powerful Language :  ex. SQL
![all codd's rules](https://github.com/ompateldeveloper/learn-sql/assets/115335915/112ef8e4-2bfd-435f-9b9d-26f71d18ae91)
## RDBMS languages
  - Oracle
  - Microsoft SQL server
  - MySQL
  - IBM-DB2
  - Sybase
  - Postgres SQL
## SQL Command set
![SQL command set](https://github.com/ompateldeveloper/learn-sql/assets/115335915/4e18efeb-a88a-4c57-b082-75bb8d40ef44)
### Data Types in oracle 
- number : 1-32 digits
- char : alphanumeric 1-2000 characters
- varchar2 : alphanumeric , 1-4000 characters
- Date : it accepts Date data type in format dd/mm/yy from 1-jan-4712ad to 31-dec-4712ad
- long : Max length of 2GB
## Commands in SQL 
   1. DCL
      - Connect with user: CONNECT username;
      - Create new User: CREATE USER username IDENTIFIED BY password;
      - Granting permission to a User: GRANT CONNECT,RESOURCES,DBA TO username;
      - See current user : SHOW USER;
      - granting a user permission in table : GRANT ALL ON songs TO user2;
      - revoking a user permission in table : REVOKE ALL ON songs FROM user2;
   2. DDL
      - create table : CREATE TABLE songs(column type,....);
      - alter a table : ALTER TABLE songs ADD album VARCHAR2(30);
      - alter a table : ALTER TABLE songs MODIFY artist VARCHAR2(40);
      - drop a table : DROP TABLE songs
        
   3. DML
      - 
      1. DQL :
         - select all columns from table : SELECT * FROM songs
         - select columns from table : SELECT id,title FROM songs 
      
   5. TCL
      - To commit changes ( like a savepoint ) : COMMIT commitname;
      - to create savepoint : SAVEPOINT savepointname
      - To rollback any commits : ROLLBACK commitname
      - To rollback any savepoint : ROLLBACK TO savepointname
        `Note: you need to create commit in order to rollback , this is good practice before doing any harmful actions such as delete ot truncate etc it rollbacks any updation to previous commit.`
        
   6. Other commands
      - see all tables :  SELECT * FROM tab
      - for running previous command : /
      - see scehma of table  :  desc songs
      - 
