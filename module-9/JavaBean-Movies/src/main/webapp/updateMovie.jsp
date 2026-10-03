<%--
    Name: Suresh Shrestha
    Date: 9/26/2026
    Module: 8
    Assignment: Project Part 3
    Description: Processes the movie update and sends the user
                 to the results page.
--%>

<%@ page import="com.suresh.movies.MovieDB" %>
<%@ page import="com.suresh.movies.MovieBean" %>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    int releaseYear = Integer.parseInt(request.getParameter("release_year"));
    String director = request.getParameter("director");

    MovieBean movie = new MovieBean();

    movie.setMovieId(movieId);
    movie.setTitle(title);
    movie.setGenre(genre);
    movie.setReleaseYear(releaseYear);
    movie.setDirector(director);

    boolean updated = MovieDB.updateMovie(movie);

    if (updated) {
        response.sendRedirect(
            "updateResult.jsp?movie_id=" + movieId
        );
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Movie</title>
</head>

<body>

<h1>Update Movie</h1>

<p>The movie record could not be updated.</p>

<a href="selectMovie.jsp">Try Again</a>

<br><br>

<a href="index.jsp">Return to Home Page</a>

</body>
</html>