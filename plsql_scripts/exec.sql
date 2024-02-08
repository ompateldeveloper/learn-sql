DECLARE
    v_return NUMBER;
BEGIN
    -- remove_song(4);

    v_return:= add_function(2,5);
    -- add_song('Specture',1,null);
    DBMS_OUTPUT.PUT_LINE('exec ended with ' || v_return);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('opps,error occured');
END;
/
SELECT * FROM songs;