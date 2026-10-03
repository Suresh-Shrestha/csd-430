<%@ page import="com.suresh.movies.MovieBean" %>
<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="java.util.List" %>

<%--
    Name: Suresh Shrestha
    Date: 9/19/2026
    Module: 7.2
    Assignment: Movie Database Add Record
    Description: Adds a movie to the database and displays all movie records.
--%>

<%
    request.setCharacterEncoding("UTF-8");

    String message;
    boolean movieAdded = false;

    try {
        String title = request.getParameter("title");
        String genre = request.getParameter("genre");
        String releaseYearValue = request.getParameter("releaseYear");
        String director = request.getParameter("director");

        if (title == null || title.trim().isEmpty()
                || genre == null || genre.trim().isEmpty()
                || releaseYearValue == null || releaseYearValue.trim().isEmpty()
                || director == null || director.trim().isEmpty()) {

            message = "The movie was not added because all fields are required.";

        } else {
            int releaseYear = Integer.parseInt(releaseYearValue);

            MovieBean movie = new MovieBean();
            movie.setTitle(title.trim());
            movie.setGenre(genre.trim());
            movie.setReleaseYear(releaseYear);
            movie.setDirector(director.trim());

            movieAdded = MovieDB.addMovie(movie);

            if (movieAdded) {
                message = "The new movie was added successfully. Its movie ID is "
                        + movie.getMovieId() + ".";
            } else {
                message = "The movie could not be added to the database.";
            }
        }

    } catch (NumberFormatException e) {
        message = "The release year must be a valid number.";
    }

    List<MovieBean> movies = MovieDB.getAllMovies();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Movie Database Results</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }

        h1, h2 {
            color: #244b6b;
        }

        .message {
            padding: 12px;
            margin-bottom: 20px;
            background-color: white;
            border-left: 5px solid #245c8a;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }

        th, td {
            border: 1px solid #999999;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #245c8a;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #eeeeee;
        }

        .links {
            margin-top: 20px;
        }
    </style>
</head>

<body>

<h1>Movie Database Results</h1>

<p>
    This page shows the result of the submitted movie form and displays
    every movie currently stored in the CSD430 database.
</p>

<div class="message">
    <%= message %>
</div>

<h2>Complete Movie Collection</h2>

<p>
    Each row represents one movie record. The columns show the movie ID,
    title, genre, release year, and director.
</p>

<table>
    <thead>
    <tr>
        <th>Movie ID</th>
        <th>Title</th>
        <th>Genre</th>
        <th>Release Year</th>
        <th>Director</th>
    </tr>
    </thead>

    <tbody>

    <%
        for (MovieBean movie : movies) {
    %>

    <tr>
        <td><%= movie.getMovieId() %></td>
        <td><%= movie.getTitle() %></td>
        <td><%= movie.getGenre() %></td>
        <td><%= movie.getReleaseYear() %></td>
        <td><%= movie.getDirector() %></td>
    </tr>

    <%
        }
    %>

    </tbody>
</table>

<div class="links">
    <p><a href="movieForm.jsp">Add Another Movie</a></p>
    <p><a href="index.jsp">Return to Main Page</a></p>
</div>

</body>
</html>