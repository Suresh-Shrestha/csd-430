<%--
    Name: Suresh Shrestha
    Date: 10/02/2026
    Module: 9
    Assignment: Movie Database Delete Record
    Description: Deletes the selected movie record and displays
    all remaining movie records and movie IDs.
--%>

<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="com.suresh.movies.MovieBean" %>
<%@ page import="java.util.List" %>

<%
    // Get the selected movie ID from the delete form.
    String movieIdParameter = request.getParameter("movieId");

    String message = "";

    if (movieIdParameter != null && !movieIdParameter.isEmpty()) {

        int movieId = Integer.parseInt(movieIdParameter);

        // Delete the selected movie from the database.
        boolean deleted = MovieDB.deleteMovie(movieId);

        if (deleted) {
            message = "Movie ID " + movieId + " was deleted successfully.";
        } else {
            message = "The movie could not be deleted.";
        }
    }

    // Get all remaining movies after the delete operation.
    List<MovieBean> movies = MovieDB.getAllMovies();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Movie Result</title>

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

<h1>Movie Database - Delete Result</h1>

<p><%= message %></p>

<p>
    Select another Movie ID from the dropdown if you want
    to delete another record.
</p>

<h2>Select Another Movie to Delete</h2>

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

<h2>Remaining Movie Records</h2>

<p>
    The table below displays all movie records remaining
    in the database after the delete operation.
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