<%--
    Name: Suresh Shrestha
     Module: 2.2 Assignment
     8/22/2026
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    /*
     * Module 2 - JSP Scriptlets Assignment
     * This page uses JSP Scriptlets to store information about
     * places I enjoyed visiting in Nebraska.
     *
     * Each record contains three fields:
     * Place, City, and Description.
     */

    // Travel data containing five records and three fields
    String[][] travelData = {
            {"Henry Doorly Zoo and Aquarium", "Omaha", "A large zoo with many animals and exhibits"},
            {"Old Market", "Omaha", "A historic area with shops and restaurants"},
            {"Lauritzen Gardens", "Omaha", "A botanical garden with many plants and flowers"},
            {"Strategic Air Command & Aerospace Museum", "Ashland", "A museum with aircraft and aviation exhibits"},
            {"Chimney Rock", "Bayard", "A famous natural landmark in Nebraska"}
    };
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Places I Enjoyed Visiting in Nebraska</title>

    <!-- Link to the external CSS stylesheet -->
    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container">

    <h1>Places I Enjoyed Visiting in Nebraska</h1>

    <p>
        This page displays information about different places I enjoyed
        visiting in Nebraska. Each record includes the name of the place,
        the city where it is located, and a short description.
    </p>

    <h2>Field Descriptions</h2>

    <ul>
        <li><strong>Place:</strong> The name of the location or attraction.</li>
        <li><strong>City:</strong> The Nebraska city where the place is located.</li>
        <li><strong>Description:</strong> A short description of the location.</li>
    </ul>

    <h2>Nebraska Travel Data</h2>

    <table>
        <thead>
        <tr>
            <th>Place</th>
            <th>City</th>
            <th>Description</th>
        </tr>
        </thead>

        <tbody>

        <%
            // Loop through the travel data and display each record
            for (int i = 0; i < travelData.length; i++) {
        %>

        <tr>
            <td><%= travelData[i][0] %></td>
            <td><%= travelData[i][1] %></td>
            <td><%= travelData[i][2] %></td>
        </tr>

        <%
            }
        %>

        </tbody>
    </table>

    <p class="record-description">
        <strong>Record Description:</strong>
        Each row represents one place in Nebraska and contains three fields:
        the place name, city, and description.
    </p>

</div>

</body>
</html>