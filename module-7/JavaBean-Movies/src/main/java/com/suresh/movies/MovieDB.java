/*
 * Name: Suresh Shrestha
 * Date: 9/19/2026
 * Module: 7.2
 * Assignment: Movie Database Add Record
 * Description: Connects to the CSD430 database, adds movie records,
 * and retrieves movie information.
 */

package com.suresh.movies;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieDB {

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private static final String URL =
            "jdbc:mysql://localhost:3306/CSD430";

    private static final String USER = "student1";
    private static final String PASSWORD = "pass";

    // Retrieves all movie IDs for the selection page.
    public static List<Integer> getMovieIds() {

        List<Integer> movieIds = new ArrayList<>();

        String sql =
                "SELECT movie_id FROM sureshmoviesdata ORDER BY movie_id";

        try (
                Connection connection =
                        DriverManager.getConnection(URL, USER, PASSWORD);

                PreparedStatement statement =
                        connection.prepareStatement(sql);

                ResultSet resultSet =
                        statement.executeQuery()
        ) {

            while (resultSet.next()) {
                movieIds.add(resultSet.getInt("movie_id"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movieIds;
    }

    // Retrieves one movie by its primary key.
    public static MovieBean getMovieById(int movieId) {

        MovieBean movie = null;

        String sql =
                "SELECT movie_id, title, genre, release_year, director " +
                        "FROM sureshmoviesdata WHERE movie_id = ?";

        try (
                Connection connection =
                        DriverManager.getConnection(URL, USER, PASSWORD);

                PreparedStatement statement =
                        connection.prepareStatement(sql)
        ) {

            statement.setInt(1, movieId);

            try (ResultSet resultSet = statement.executeQuery()) {

                if (resultSet.next()) {

                    movie = new MovieBean();

                    movie.setMovieId(
                            resultSet.getInt("movie_id"));

                    movie.setTitle(
                            resultSet.getString("title"));

                    movie.setGenre(
                            resultSet.getString("genre"));

                    movie.setReleaseYear(
                            resultSet.getInt("release_year"));

                    movie.setDirector(
                            resultSet.getString("director"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movie;
    }

    // Adds a new movie and creates the next available movie ID.
    public static boolean addMovie(MovieBean movie) {

        String nextIdSql =
                "SELECT COALESCE(MAX(movie_id), 0) + 1 AS next_id " +
                        "FROM sureshmoviesdata";

        String insertSql =
                "INSERT INTO sureshmoviesdata " +
                        "(movie_id, title, genre, release_year, director) " +
                        "VALUES (?, ?, ?, ?, ?)";

        try (
                Connection connection =
                        DriverManager.getConnection(URL, USER, PASSWORD)
        ) {

            int nextMovieId;

            try (
                    PreparedStatement idStatement =
                            connection.prepareStatement(nextIdSql);

                    ResultSet resultSet =
                            idStatement.executeQuery()
            ) {

                resultSet.next();
                nextMovieId = resultSet.getInt("next_id");
            }

            try (
                    PreparedStatement insertStatement =
                            connection.prepareStatement(insertSql)
            ) {

                insertStatement.setInt(1, nextMovieId);
                insertStatement.setString(2, movie.getTitle());
                insertStatement.setString(3, movie.getGenre());
                insertStatement.setInt(4, movie.getReleaseYear());
                insertStatement.setString(5, movie.getDirector());

                int rowsAdded = insertStatement.executeUpdate();

                if (rowsAdded > 0) {
                    movie.setMovieId(nextMovieId);
                    return true;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    // Retrieves every movie for the Module 7 results table.
    public static List<MovieBean> getAllMovies() {

        List<MovieBean> movies = new ArrayList<>();

        String sql =
                "SELECT movie_id, title, genre, release_year, director " +
                        "FROM sureshmoviesdata ORDER BY movie_id";

        try (
                Connection connection =
                        DriverManager.getConnection(URL, USER, PASSWORD);

                PreparedStatement statement =
                        connection.prepareStatement(sql);

                ResultSet resultSet =
                        statement.executeQuery()
        ) {

            while (resultSet.next()) {

                MovieBean movie = new MovieBean();

                movie.setMovieId(
                        resultSet.getInt("movie_id"));

                movie.setTitle(
                        resultSet.getString("title"));

                movie.setGenre(
                        resultSet.getString("genre"));

                movie.setReleaseYear(
                        resultSet.getInt("release_year"));

                movie.setDirector(
                        resultSet.getString("director"));

                movies.add(movie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movies;
    }
}