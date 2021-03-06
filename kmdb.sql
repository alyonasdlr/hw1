-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output


-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output



-- The SQL statement for the cast output
-- TODO!

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS casts;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_name TEXT,
  year_of_release TEXT,
  APAA_rating TEXT,
  movie_director_id INTEGER
);

CREATE TABLE people (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  persons_name TEXT
);

CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_description TEXT
);


CREATE TABLE casts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_id INTEGER,
    movie_id INTEGER,
    played_by INTEGER
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Christopher Nolan"
);



INSERT INTO people (
  persons_name
)
VALUES (
  "Christian Bale"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Bruce Wayne"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Michail Caine"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Alfred"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Liam Neeson"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Ra's Al Ghul"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Katie Homes"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Rachel Dawes"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Gary Oldman"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Commissioner Gordon"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Heath Ledger"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Joker"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Aaron Ekhart"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Harvey Dent"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Maggie Gyllenhaal"
);


INSERT INTO people (
  persons_name
)
VALUES (
  "Tom Hardy"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Bane"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Joseph Gordon-Lewitt"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "John Blake"
);

INSERT INTO people (
  persons_name
)
VALUES (
  "Anne Hathaway"
);

INSERT INTO roles (
  role_description
)
VALUES (
  "Selina Kyle"
);


INSERT INTO movies (
  movie_name,
  year_of_release,
  APAA_rating,
  movie_director_id
)
VALUES (
  "Batman Begins",
  "2005",
  "PG-13",
  1
);

INSERT INTO movies (
  movie_name,
  year_of_release,
  APAA_rating,
  movie_director_id
)
VALUES (
  "The Dark Knight",
  "2008",
  "PG-13",
  1
);

INSERT INTO movies (
  movie_name,
  year_of_release,
  APAA_rating,
  movie_director_id
)
VALUES (
  "The Dark Knight Rises",
  "2013",
  "PG-13",
  1
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  1,
  1,
  2
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  1,
  2,
  3
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  1,
  3,
  4
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  1,
  4,
  5
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  1,
  5,
  6
);


INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  2,
  1,
  2
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  2,
  6,
  7
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  2,
  7,
  8
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  2,
  4,
  9
);


INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  3,
  1,
  2
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  3,
  5,
  6
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  3,
  8,
  10
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  3,
  9,
  11
);

INSERT INTO casts (
    movie_id,
    role_id,
    played_by
)
VALUES (
  3,
  10,
  12
);


.print ""
.print "Movies"
SELECT movies.movie_name, movies.year_of_release, movies.APAA_rating, people.persons_name
FROM people
INNER JOIN movies ON people.id = movies.movie_director_id;
.print "======"


.print ""
.print "Top Cast"
 SELECT movies.movie_name, people.persons_name, roles.role_description
 FROM casts
 INNER JOIN movies ON movies.id = casts.movie_id
 INNER JOIN roles ON roles.id = casts.role_id
 INNER JOIN people ON people.id = casts.played_by;
.print "========"
.print ""