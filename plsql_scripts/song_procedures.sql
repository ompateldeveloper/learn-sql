-- add songs
CREATE OR REPLACE PROCEDURE add_song
(
    p_title songs.title%type,
    p_artist_id songs.artist_id%type,
    p_album_id songs.album_id%type
)
AS
BEGIN
    INSERT INTO songs VALUES (song_sequence.NEXTVAL,p_title,p_artist_id,p_album_id);
    DBMS_OUTPUT.PUT_LINE('song added by : ' || p_title );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('error adding song');

END add_song;

-- remove songs 
CREATE OR REPLACE PROCEDURE remove_song 
(
    p_id songs.id%type
)
AS
BEGIN
    DELETE FROM songs WHERE id=p_id;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('error removing song');
END remove_song;
/