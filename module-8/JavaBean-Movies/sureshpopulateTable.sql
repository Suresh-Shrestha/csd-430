/*
    Name: Suresh Shrestha
    Module: 5
    Date: 9/11/2026
    Description: Populates the movies data table with 10 movie records.
*/

USE CSD430;

INSERT INTO sureshmoviesdata
(movie_id, title, genre, release_year, director)
VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 'Frank Darabont'),
(2, 'The Godfather', 'Crime', 1972, 'Francis Ford Coppola'),
(3, 'The Dark Knight', 'Action', 2008, 'Christopher Nolan'),
(4, 'Forrest Gump', 'Drama', 1994, 'Robert Zemeckis'),
(5, 'Inception', 'Science Fiction', 2010, 'Christopher Nolan'),
(6, 'Interstellar', 'Science Fiction', 2014, 'Christopher Nolan'),
(7, 'The Matrix', 'Science Fiction', 1999, 'Lana and Lilly Wachowski'),
(8, 'Gladiator', 'Action', 2000, 'Ridley Scott'),
(9, 'Titanic', 'Romance', 1997, 'James Cameron'),
(10, 'Avatar', 'Science Fiction', 2009, 'James Cameron');