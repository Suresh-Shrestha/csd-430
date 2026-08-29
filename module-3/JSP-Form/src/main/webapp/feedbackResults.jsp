<%--
    Name: Suresh Shrestha
    Module: 3.2 Assignment
    8/28/2026
    Description: This page receives the restaurant feedback
    and shows the customer's responses in an HTML table.
--%>

<%
    // Receive the information entered on the feedback form
    String customerName = request.getParameter("customerName");
    String visitDate = request.getParameter("visitDate");
    String meal = request.getParameter("meal");
    String foodRating = request.getParameter("foodRating");
    String serviceRating = request.getParameter("serviceRating");
    String visitAgain = request.getParameter("visitAgain");
    String comments = request.getParameter("comments");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Feedback Results</title>
</head>

<body>
<h1>Customer Feedback Results</h1>

<p>
    Thank you for sharing your experience. Your feedback information is shown in the table below.
</p>

<table border="1">

    <tr>
        <th>Feedback Item</th>
        <th>Description</th>
        <th>Your Response</th>
    </tr>

    <tr>
        <td>Customer Name</td>
        <td>Name of the person giving feedback</td>
        <td><%= customerName %></td>
    </tr>

    <tr>
        <td>Date Visited</td>
        <td>Date the restaurant visit</td>
        <td><%= visitDate %></td>
    </tr>

    <tr>
        <td>Meal</td>
        <td>Meal the customer ordered</td>
        <td><%= meal %></td>
    </tr>

    <tr>
        <td>Food Rating</td>
        <td>Customer rating for the food</td>
        <td><%= foodRating %></td>
    </tr>

    <tr>
        <td>Service Rating</td>
        <td>Rating given for the service</td>
        <td><%= serviceRating %></td>
    </tr>

    <tr>
        <td>Visit Again</td>
        <td>Would the customer visit again?</td>
        <td><%= visitAgain %></td>
    </tr>

    <tr>
        <td>Comments</td>
        <td>Other comments about the experience</td>
        <td><%= comments %></td>
    </tr>

</table>

<br>

<a href="restaurantFeedback.jsp">Back to Feedback Form</a>

</body>
</html>