<%--
    Name: Suresh Shrestha
    Date: 9/26/2026
    Module: 8
    Assignment: Project Part 3
    Description: Displays movie IDs in a dropdown so the user
                 can select a movie to update.
--%>

<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="java.util.List" %>

<%
    MovieDB movieDB = new MovieDB();
    List<Integer> movieIds = movieDB.getMovieIds();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Movie to Update</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }

        .container {
            width: 600px;
            padding: 25px;
            background-color: white;
            border: 1px solid #cccccc;
            border-radius: 8px;
        }

        h1 {
            color: #244b6b;
        }

        select {
            padding: 7px;
            margin-left: 10px;
        }

        input[type="submit"] {
            padding: 8px 15px;
            cursor: pointer;
        }

        a {
            color: #245c8a;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Update Movie</h1>

    <p>Select a movie ID to update the movie information.</p>

    <form action="editMovie.jsp" method="get">

        <label for="movie_id">Movie ID:</label>

        <select name="movie_id" id="movie_id" required>

            <% for (Integer id : movieIds) { %>

                <option value="<%= id %>"><%= id %></option>

            <% } %>

        </select>

        <br><br>

        <input type="submit" value="Edit Movie">

    </form>

    <br>

    <a href="index.jsp">Return to Home Page</a>

</div>

</body>
</html>