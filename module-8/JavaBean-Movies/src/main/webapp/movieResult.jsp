<%--
    Name: Suresh Shrestha
    Date: 9/11/2026
    Module: 5
    Assignment: JavaBean Database Read
    Description: Displays one selected movie record from the CSD430 database.
--%>

<%@ page import="com.suresh.movies.MovieBean" %>
<%@ page import="com.suresh.movies.MovieDB" %>

<%
    String movieIdValue = request.getParameter("movieId");
    MovieBean movie = null;

    if (movieIdValue != null && !movieIdValue.isEmpty()) {
        int movieId = Integer.parseInt(movieIdValue);
        movie = MovieDB.getMovieById(movieId);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Movie Record</title>
</head>

<body>

<h1>Selected Movie Record</h1>

<p>
    This table displays the information for the movie selected from the database.
</p>

<%
    if (movie != null) {
%>

<table border="1">
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
        <td><%= movie.getMovieId() %></td>
        <td><%= movie.getTitle() %></td>
        <td><%= movie.getGenre() %></td>
        <td><%= movie.getReleaseYear() %></td>
        <td><%= movie.getDirector() %></td>
    </tr>
    </tbody>
</table>

<%
    } else {
%>

<p>No movie record was found.</p>

<%
    }
%>

<p>
    <a href="movieSelect.jsp">Select Another Movie</a>
</p>

</body>
</html>