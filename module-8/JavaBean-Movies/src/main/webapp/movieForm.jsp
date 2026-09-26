<%--
    Name: Suresh Shrestha
    Date: 9/19/2026
    Module: 7.2
    Assignment: Movie Database Add Record
    Description: Displays a form for entering a new movie record.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Add a Movie</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }

        .form-container {
            width: 500px;
            padding: 25px;
            background-color: white;
            border: 1px solid #cccccc;
            border-radius: 8px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #245c8a;
            color: white;
            border: none;
            cursor: pointer;
        }

        .description {
            color: #555555;
        }
    </style>
</head>

<body>

<div class="form-container">

    <h1>Add a New Movie</h1>

    <p class="description">
        Use this form to add a new movie to the CSD430 movie database.
        The movie ID will be created automatically after the form is submitted.
    </p>

    <form action="movieAdd.jsp" method="post">

        <label for="title">Movie Title</label>
        <input type="text"
               id="title"
               name="title"
               maxlength="100"
               required>

        <label for="genre">Genre</label>
        <select id="genre" name="genre" required>
            <option value="">Select a genre</option>
            <option value="Action">Action</option>
            <option value="Comedy">Comedy</option>
            <option value="Drama">Drama</option>
            <option value="Science Fiction">Science Fiction</option>
            <option value="Thriller">Thriller</option>
            <option value="Animation">Animation</option>
        </select>

        <label for="releaseYear">Release Year</label>
        <input type="number"
               id="releaseYear"
               name="releaseYear"
               min="1888"
               max="2100"
               required>

        <label for="director">Director</label>
        <input type="text"
               id="director"
               name="director"
               maxlength="100"
               required>

        <button type="submit">Add Movie</button>

    </form>

    <p>
        <a href="index.jsp">Return to Main Page</a>
    </p>

</div>

</body>
</html>