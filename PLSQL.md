# PLSQL
procedural structured query language is extenstion to sql which adds programming abilities to sql
`Note: generally what we do is SET SERVEROUT ON which enables dbms_output.put_line() messages on console `
## PLSQL Structure/Template:
```
DECLARE
-- all variables are declared here
BEGIN
-- your code goes here
EXCEPTION
-- All error goes here
END;
```
## Main Elements:
- DECLARE (optonal): variables are declared in this block
- EXCEPTION (optonal): error handline is done here
- BEGIN/END: this block is where all the code is executed

## Other Synatx:
- to declare variables:
```
v_varible1 number; -- with satic datatype
v_varible2 songs.id%type -- uses type from a table's column
```
- to assign value :
```
v_variable1 := 1;
-- or you can assign variable using select over a tabl;e as well
SELECT id INTO v_varible2 FROM songs WHERE title LIKE 'unity';

```
- to print things over console
```
dbms_output.put_line('hello ' || variable1);
```
- conditionals in SQL
```
IF v_num1 > v_num2 THEN
-- do somethihng
ELSEIF v_num1 > v_num2 THEN
-- do something else
ElSE
-- Else do this
END IF;
```
- raising error in SQL
```
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- No data found.
        RAISE_APPLICATION_ERROR(-40006,'Error message')
    WHEN ZERO_DIVIDE THEN
        -- Division by zero.
    WHEN OTHERS THEN
        -- other errors.

```
`Note:  You can create custom error in PLSQL using RAISE custom_error_name keyword , later we can like this with WHEN custom_error_name THEN `
## Stored Procedures 
There are 2 types of stored procidure:
1. PROCIDURE
2. FUNCTION
- PROCIDURE :
  ```
  
  ```
- 
