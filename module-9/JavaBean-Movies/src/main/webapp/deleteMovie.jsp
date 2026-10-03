<%--
    Name: Suresh Shrestha
    Date: 10/02/2026
    Module: 9
    Assignment: Movie Database Delete Record
    Description: Displays all movie records and allows the user
    to select a movie ID and delete the selected record.
--%>

<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="com.suresh.movies.MovieBean" %>
<%@ page import="java.util.List" %>

<%
    // Get all current movie records from the database.
    List<MovieBean> movies = MovieDB.getAllMovies();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Movie</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #eeeeee;
        }

        form {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

<h1>Movie Database - Delete Record</h1>

<p>
    This page displays all movie records currently stored in the
    CSD430 movie database. Select a Movie ID from the dropdown
    to delete a record.
</p>

<h2>Select a Movie to Delete</h2>

<form action="deleteResult.jsp" method="post">

    <label for="movieId">Movie ID:</label>

    <select name="movieId" id="movieId">

        <%
            for (MovieBean movie : movies) {
        %>

        <option value="<%= movie.getMovieId() %>">
            <%= movie.getMovieId() %>
        </option>

        <%
            }
        %>

    </select>

    <input type="submit"
           value="Delete Movie"
           <%= movies.isEmpty() ? "disabled" : "" %>>

</form>

<h2>Current Movie Records</h2>

<p>
    The table contains the Movie ID, Title, Genre,
    Release Year, and Director for each movie.
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

</body>
</html>