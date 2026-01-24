DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS studio;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS characters;


CREATE TABLE movie (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     title TEXT,
     year_released INTEGER,
     MPAA_rating INTEGER,
     studio_id INTEGER
);

CREATE TABLE studio (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT
);

CREATE TABLE actor (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     actor_name TEXT,
     agent TEXT
);

CREATE TABLE characters (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     character_name TEXT,
     actor_id INTEGER,
     movie_id INTEGER
);



INSERT INTO studio (studio_name
) values (
   "Warner Bros.")
   ;

INSERT INTO movie (title, year_released, MPAA_rating, studio_id
) values 
("Batman Begins","2005","PG-13",1),
("The Dark Knight","2008","PG-13",1),
("The Dark Knight Rises",  "2012","PG-13",1)
;

INSERT INTO actor (actor_name)
values 
("Christian Bale"),
("Michael Caine"),
("Liam Neeson"),  
("Katie Holmes"),
("Gary Oldman"),           
("Heath Ledger"),
("Aaron Eckhart"), 
("Maggie Gyllenhaal"),
("Tom Hardy"),
("Joseph Gordon-Levitt"),
("Anne Hathaway")
;  

INSERT INTO characters (movie_id, actor_id, character_name)
values 
(1,1,"Bruce Wayne"),
 (1,2,"Alfred"),
 (1,3,"Ra's Al Ghul"),
 (1,4, "Rachel Dawes"),
 (1,5,"Commissioner Gordon"),
 (2,1,"Bruce Wayne"),
 (2,6, "Joker"),
 (2,7, "Harvey Dent"),
 (2,2,"Alfred"),
 (2,8, "Rachel Dawes"),
 (3,1,"Bruce Wayne"),
 (3,5, "Commissioner Gordon"),
 (3,9, "Bane"),
 (3,10, "John Blake"),
 (3,11, "Selina Kyle")
 ;


UPDATE actor set agent = "William Morris Endeavor"
where id= 1 
;


.print "Movies"
.print "======"
.print ""

select title, year_released, MPAA_rating, studio_name
from movie
join studio on movie.studio_id = studio.id
;
.print ""
.print "Top Cast"
.print "========"
.print ""

select title, actor_name, character_name
from characters
join movie on characters.movie_id = movie.id
join actor on actor.id = characters.actor_id;

.print ""
.print "Represented by agent"
.print "===================="
.print ""

select actor_name from actor
where agent = "William Morris Endeavor"