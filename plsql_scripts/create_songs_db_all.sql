create table albums (album_id number primary key, name varchar2(20));
create table artists (artist_id number primary key, name varchar2(20));
create table songs (
    id number primary key,
    title varchar2(20), 
    artist_id number references artists(artist_id), 
    album_id number references albums(album_id)
);

insert into albums values (1,'album1');
insert into albums values (2,'album2');
insert into artists values (1,'Alan Walker');
insert into artists values (2,'Aimer');
insert into artists values (3,'Lisa');
insert into songs values (1,'Faded', 1,1);
insert into songs values (2,'Crossing Field', 3,null);
insert into songs values (3,'Akeboshi', 2,2);

select * from tab;