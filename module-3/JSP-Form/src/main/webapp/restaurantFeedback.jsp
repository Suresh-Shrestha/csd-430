<%--
    Name: Suresh Shrestha
    Module: 3.2 Assignment
    8/28/2026
    Description: This restaurant feedback form collects information
    about a customer food and service experience.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Customer Feedback Form</title>
</head>

<body>

<h1>Restaurant Experience Feedback</h1>

<p>
    Please share your experience from your recent visit.
</p>

<form action="feedbackResults.jsp" method="post">

    <label>Your Name:</label>
    <input type="text" name="customerName" required>
    <br><br>

    <label>Date Visited:</label>
    <input type="date" name="visitDate" required>
    <br><br>

    <label>What meal did you order:</label>
    <input type="text" name="meal" required>
    <br><br>

    <label>How was your food?:</label><br>
    <input type="radio" name="foodRating" value="Excellent" required> Excellent
    <input type="radio" name="foodRating" value="Good"> Good
    <input type="radio" name="foodRating" value="Fair"> Fair
    <input type="radio" name="foodRating" value="Poor"> Poor
    <br><br>

    <label>How was our service?:</label>
    <select name="serviceRating" required>
        <option value="">choose one</option>
        <option value="Excellent">Excellent</option>
        <option value="Good">Good</option>
        <option value="Fair">Fair</option>
        <option value="Poor">Poor</option>
    </select>
    <br><br>

    <label>Would you visit us again?</label>
    <input type="radio" name="visitAgain" value="Yes" required> Yes
    <input type="radio" name="visitAgain" value="No"> No
    <br><br>

    <label>Comments:</label><br>
    <textarea name="comments" rows="4" cols="40"></textarea>
    <br><br>

    <input type="submit" value="Send Feedback">
</form>
</body>
</html>