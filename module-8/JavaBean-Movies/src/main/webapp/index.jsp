<%--
    Name: Suresh Shrestha
    Date: 9/25/2026
    Module: 8
    Assignment: Movie Database Project Part 3
    Description: Main page containing links to view, add,
                 and update movie records.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>CSD430 Movie Database</title>

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

        li {
            margin: 15px 0;
        }

        a {
            color: #245c8a;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>CSD430 Movie Database Project</h1>

    <p>
        This project uses JavaBeans, JSP pages, and MySQL to manage movie
        information. Users can view existing movie records, add a new movie,
        or update an existing movie.
    </p>

    <h2>Project Options</h2>

    <ul>
        <li>
            <a href="movieSelect.jsp">View a Movie Record</a>
            - Select a movie ID and display its information.
        </li>

        <li>
            <a href="movieForm.jsp">Add a New Movie</a>
            - Enter a new movie and display all database records.
        </li>

        <li>
            <a href="selectMovie.jsp">Update a Movie Record</a>
            - Select a movie ID and update its information.
        </li>
    </ul>

</div>

</body>
</html>
