/*
 * Name: Suresh Shrestha
 * Date: 9/11/2026
 * Module: 5
 * Assignment: JavaBean Database Read
 * Description: This class connects to the CSD430 database
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
}