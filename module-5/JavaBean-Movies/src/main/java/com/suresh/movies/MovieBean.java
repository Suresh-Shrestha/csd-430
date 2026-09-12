/*
 * Name: Suresh Shrestha
 * Date: 9/11/2026
 * Module: 5
 * Assignment: JavaBean Database Read
 * Description: This JavaBean stores information for one movie
 * record retrieved from the CSD430 database.
 */

package com.suresh.movies;

import java.io.Serializable;

public class MovieBean implements Serializable {

    private int movieId;
    private String title;
    private String genre;
    private int releaseYear;
    private String director;

    public MovieBean() {
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }
    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }
}