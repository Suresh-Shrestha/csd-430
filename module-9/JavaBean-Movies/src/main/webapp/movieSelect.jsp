<%--
    Name: Suresh Shrestha
    Date: 9/11/2026
    Module: 5
    Assignment: JavaBean Database Read
    Description: Displays a dropdown list of movie IDs from the CSD430 database.
--%>

<%@ page import="java.util.List" %>
<%@ page import="com.suresh.movies.MovieDB" %>

<%
    List<Integer> movieIds = MovieDB.getMovieIds();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Select a Movie</title>
</head>

<body>

<h1>Movie Database</h1>

<p>
    Select a movie ID from the dropdown menu to view the movie information.
</p>

<form action="movieResult.jsp" method="get">

    <label for="movieId">Movie ID:</label>

    <select name="movieId" id="movieId">

        <%
            for (Integer id : movieIds) {
        %>

        <option value="<%= id %>"><%= id %></option>

        <%
            }
        %>

    </select>

    <button type="submit">View Movie</button>

</form>

</body>
</html>