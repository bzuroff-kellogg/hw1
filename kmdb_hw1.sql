DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS studio;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS agent;

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
     agent_id INTEGER
);

CREATE TABLE characters (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     character_name TEXT,
     actor_id INTEGER,
     movie_id INTEGER
);

CREATE TABLE agent (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     agent_name TEXT
);
