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
  - int : accepts intiger values
  - real :  accepts float values
- char : alphanumeric 1-2000 characters
- varchar2 : alphanumeric , 1-4000 characters
- Date : it accepts Date data type in format dd/mon/yy from 1-jan-4712ad to 31-dec-4712ad
- long : Max length of 2GB
- LOB (Large Objects) :
   - BLOB (Binary Large Objects) : binary data is stored
   - CLOB (Charchter Large Objects) Charchter data is stored
   - BFILE (Binary File) : It stored binary file
- Raw : Raw data
- Long Raw : Long raw data
  
## Commands in SQL 
   1. DCL (Data Control Language)
      - Connect with user: ```CONNECT username;```
      - Create new User: ```CREATE USER username IDENTIFIED BY password;```
      - Granting permission to a User: ```GRANT CONNECT,RESOURCES,DBA TO username;```
      - See current user : ```SHOW USER;```
      - granting a user permission in table : ```GRANT ALL ON songs TO user2;```
      - revoking a user permission in table : ```REVOKE ALL ON songs FROM user2;```
   2. DDL (Data Definition Language)
      - create table : ```CREATE TABLE songs(column type,....);```
      - alter a table : ```ALTER TABLE songs ADD album VARCHAR2(30);```
      - alter a table : ```ALTER TABLE songs MODIFY artist VARCHAR2(40);```
      - drop a table : ```DROP TABLE songs```
      - create a index : ```CREATE INDEX index_name ON table_name (column1, column2, ...);```
      - 
        
   3. DML (Data Manipulation Language)
      - insert a row in table :  ```INSERT INTO songs (id, title, album, artist) VALUES (1, 'unity', 'alanxunity', 'alan walker'); `Note: you can ignore table column names if we know it already ex. INSERT INTO songs VALUES (1, 'unity', 'alanxunity', 'alan walker');```
      - insert a row in table (dynamic values) :  ```INSERT INTO songs VALUES (&id, '&title', '&album', '&artist');```
      - update a value in row : ```UPDATE songs SET album = 'unity' WHERE id = 1;```
      - Delete a row in table : ```DELETE FROM songs WHERE id = 1;```
         
      - 1. DQL :
         - select all columns from table : ```SELECT * FROM songs```
         - select columns from table : ```SELECT id,title FROM songs```
      
   5. TCL (Transaction Control Language)
      - To commit changes ( like a savepoint ) : ```COMMIT commitname;```
      - to create savepoint : ```SAVEPOINT savepointname;```
      - To rollback any commits : ```ROLLBACK commitname;```
      - To rollback any savepoint : ```ROLLBACK TO savepointname;```
        `Note: you need to create commit in order to rollback , this is good practice before doing any harmful actions such as delete ot truncate etc it rollbacks any updation to previous commit.`
        
   6. Other commands
      - see all tables :  ```SELECT * FROM tab```
      - for running previous command : ```/```
      - see scehma of table  :  ```desc songs```
## Constraints of columns :
   1. Primary Key : Ensures that a column (or a combination of columns) uniquely identifies each row in a table.
   2. Foreign Key : Establishes a link between two tables by referencing the primary key of one table in another table.
   3. Unique : Ensures that each row is unique
   4. Check : checks that condition which was provided while creating . syntax: CHECK (columnname > 0).
   5. Not Null : Ensures column cannot have null values.

## Operators in SQl: [link](https://www.w3schools.com/sql/sql_operators.asp)
## Built in functions: 
   -----------> String 
   5. Concat : concatinates ( joins ) 2 strings, simple!, syntax: ```SELECT CONCAT(title, '-', artist ) AS displayname FROM songs;```
   6. Substring : return a substring of givenstring , syntax: ```SELECT SUBSTRING(title, 1, 3) AS slug FROM songs;```
   7. Upper & Lower : These functions return uppercase/lowercase of input string , syntax: ```SELECT UPPER(title) AS search_list FROM songs;```
   -----------> Number 
   8. Sum, Avg, Min, Max : Thse functions sums given numbers,Finds average of numbers, Finds minimum among numbers , and Maximum respectively, syntax : ```SELECT SUM(runtime) FROM songs;```
   9. Round : this function rounds the numerical values , synatx :  ```SELECT ROUND(runtime, 2) AS runtime FROM songs;```
   10. Abs : returns absolute value of number , synatx : ```SELECT ABS(-5) AS absolute_value;```
   ----------->  Date
   11. Getdate : Gets system date where database is , syntax : ```SELECT GETDATE() as today;```
   12. Datediff : Finds difference between date , synatx : ```SELECT DATEDIFF(YEAR, birthdate, GETDATE()) AS age FROM artists;```
   13. Dateadd : Adds 2 dates , synatx: ```SELECT DATEADD(MONTH, 3, order_date) AS new_order_date FROM orders;```
   ----------->  Aggrigate
   14. Count : operates over set of values and return count of these values , synatx: ```SELECT COUNT(id) from songs;```
   15. Group By : operates over set of values and return grouped table, synatx : ```SELECT artist, Count(title) AS songs_from_artist FROM songs GROUP BY artist;```
   ----------->  Logical
   16. Case : switch case in SQL , syntax:
       ```
          SELECT
             CASE
                WHEN age < 18 THEN 'Minor'
                   ELSE 'Adult'
                END AS age_group
          FROM persons;
       ```
   17. coalese : Returns the first non-null expression in the list. synatx:  ```SELECT COALESCE(null_column, 'Default') AS result FROM example_table;```
## other Utilities in SQL : 
   1. Sequence : It geneartes unique neumeric values , its is equivalent to autoincrement in other databases,
      syntax:
      ```
      CREATE SEQUENCE my_sequence
      START WITH 1
      INCREMENT BY 1
      MAXVALUE 1000
      CYCLE;
      ```
   3. Synonym : creates duplicate table from a table , synatx : ``` CREATE SYNONYM synname FOR songs; ``` , `Note 1: changes in synonyms reflect in original table `, `Note 2: you can use PUBLIC keyword to make synonym which are globally available`
   4. View : Creates a duplicate of table from table but unlike synonym it can use conditions, we can create joined view as well which uses 2 tables , synatx: ```CREATE OR REPLACE VIEW v1 AS SELECT * FROM songs WHERE album LIKE 'A%' ```
   `Note: You can forcefull create a view which does not exist by using *FORCE* but it'll throw warning , ex CREATE FORCE VIEW v2 AS SELECT FROM geners; , later if you decide to create generes table you can update view using ALTER VIEW v2 COMPILE; `
   5. Index : Indexes create indexing over a table for faster access , syntax : ```CREATE INDEX search_songs_id ON songs(id);``` , when index is created over multiple columns its called compound index other wise its simple index , you can also use `REVERSE` keyword to create reverse key index, indexes are created by default on primary key constraint.
