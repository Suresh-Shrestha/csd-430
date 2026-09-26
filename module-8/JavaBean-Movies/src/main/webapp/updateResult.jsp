<%--
    Name: Suresh Shrestha
    Date: 9/26/2026
    Module: 8
    Assignment: Project Part 3
    Description: Displays the updated movie record in a table.
--%>

<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="com.suresh.movies.MovieBean" %>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));
    MovieBean updatedMovie = MovieDB.getMovieById(movieId);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Updated Movie</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }

        .container {
            width: 700px;
            padding: 25px;
            background-color: white;
            border: 1px solid #cccccc;
            border-radius: 8px;
        }

        h1 {
            color: #244b6b;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #cccccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #e8e8e8;
        }

        a {
            color: #245c8a;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Updated Movie Record</h1>

    <% if (updatedMovie != null) { %>

        <p>The movie record was updated successfully.</p>

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
                <tr>
                    <td><%= updatedMovie.getMovieId() %></td>
                    <td><%= updatedMovie.getTitle() %></td>
                    <td><%= updatedMovie.getGenre() %></td>
                    <td><%= updatedMovie.getReleaseYear() %></td>
                    <td><%= updatedMovie.getDirector() %></td>
                </tr>
            </tbody>
        </table>

    <% } else { %>

        <p>The movie record could not be found.</p>

    <% } %>

    <br>

    <a href="selectMovie.jsp">Update Another Movie</a>

    <br><br>

    <a href="index.jsp">Return to Home Page</a>

</div>

</body>
</html>