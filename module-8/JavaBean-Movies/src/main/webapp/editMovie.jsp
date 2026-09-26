<%--
    Name: Suresh Shrestha
    Date: 9/26/2026
    Module: 8
    Assignment: Project Part 3
    Description: Retrieves the selected movie and displays
                 its information in a form for updating.
--%>

<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="com.suresh.movies.MovieBean" %>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));
    MovieBean movie = MovieDB.getMovieById(movieId);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Movie</title>

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

        label {
            display: inline-block;
            width: 110px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 250px;
            padding: 7px;
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

    <h1>Edit Movie</h1>

    <p>Update the movie information below.</p>

    <form action="updateMovie.jsp" method="post">

        <p>
            <strong>Movie ID:</strong>
            <%= movie.getMovieId() %>
        </p>

        <input type="hidden"
               name="movie_id"
               value="<%= movie.getMovieId() %>">

        <p>
            <label for="title">Title:</label>
            <input type="text"
                   id="title"
                   name="title"
                   value="<%= movie.getTitle() %>"
                   required>
        </p>

        <p>
            <label for="genre">Genre:</label>
            <input type="text"
                   id="genre"
                   name="genre"
                   value="<%= movie.getGenre() %>"
                   required>
        </p>

        <p>
            <label for="release_year">Release Year:</label>
            <input type="number"
                   id="release_year"
                   name="release_year"
                   value="<%= movie.getReleaseYear() %>"
                   required>
        </p>

        <p>
            <label for="director">Director:</label>
            <input type="text"
                   id="director"
                   name="director"
                   value="<%= movie.getDirector() %>"
                   required>
        </p>

        <input type="submit" value="Update Movie">

    </form>

    <br>

    <a href="selectMovie.jsp">Back to Movie Selection</a>

    <br><br>

    <a href="index.jsp">Return to Home Page</a>

</div>

</body>
</html>