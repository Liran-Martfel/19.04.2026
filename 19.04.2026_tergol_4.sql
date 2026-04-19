DROP TABLE movies2;
CREATE TABLE movies2 
(
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  genre TEXT NOT NULL,
  year INTEGER NOT NULL,
  rating REAL
);

INSERT INTO movies2 (id, title, genre, year, rating) VALUES
  (1, 'Metro Rush', 'Action', 2005, 7.9),
  (2, 'Quiet Lake', 'Drama', 2012, 8.1),
  (3, 'Night Pulse', 'Horror', 2018, 6.8),
  (4, 'Skyline Code', 'Action', 2021, 7.4),
  (5, 'Tiny Planet', 'Family', 2010, 7.1),
  (6, 'Silver Track', 'Thriller', 2016, 7.4);
  
  
SELECT title FROM movies2
ORDER BY rating
LIMIT 2;

SELECT title, genre,rating FROM movies2
ORDER BY rating DESC;

SELECT title,year FROM movies2
ORDER BY year
limit 4;

SELECT id,title FROM movies2
LIMIT 2 OFFSET 2;