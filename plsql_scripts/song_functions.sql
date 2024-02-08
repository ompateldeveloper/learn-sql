CREATE OR REPLACE FUNCTION add_function ( f_v1 NUMBER, f_v2 NUMBER )
RETURN NUMBER
AS
v_out NUMBER;
BEGIN
    v_out:= f_v1 * f_v2;
    RETURN v_out;
END;
/