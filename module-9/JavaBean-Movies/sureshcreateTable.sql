/*
    Name: Suresh Shrestha
    Module: 5
    Date: 9/11/2026
    Description: Creates the movies data table for the CSD430 database.
*/

USE CSD430;

CREATE TABLE sureshmoviesdata (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    director VARCHAR(100)
);