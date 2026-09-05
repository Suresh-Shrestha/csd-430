<%--
    Suresh Shrestha
    Module - 4.2 JavaBean Assignment
    9/5/2026
    Description: This JSP page uses CountryBean objects and displays
    country information in HTML tables.
--%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csd430.beans.CountryBean" %>

<%
    // Create a list to hold the country records
    ArrayList<CountryBean> countries = new ArrayList<>();

    // Create CountryBean objects and add them to the list
    countries.add(new CountryBean(
            "Nepal",
            "Kathmandu",
            "Asia",
            "Nepalese Rupee",
            "NP",
            "A Himalayan country located in South Asia."
    ));

    countries.add(new CountryBean(
            "United States",
            "Washington, D.C.",
            "North America",
            "US Dollar",
            "US",
            "A large country located in North America."
    ));

    countries.add(new CountryBean(
            "Japan",
            "Tokyo",
            "Asia",
            "Japanese Yen",
            "JP",
            "An island country located in East Asia."
    ));

    countries.add(new CountryBean(
            "Australia",
            "Canberra",
            "Australia/Oceania",
            "Australian Dollar",
            "AU",
            "A country and continent located in the Southern Hemisphere."
    ));

    countries.add(new CountryBean(
            "Canada",
            "Ottawa",
            "North America",
            "Canadian Dollar",
            "CA",
            "A North American country known for its large geographic area."
    ));
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Country Information</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container">

    <h1>Country Information</h1>

    <p>
        This page displays information about several countries.
        Each country is stored as a CountryBean object. The JavaBean
        contains the country name, capital, continent, currency,
        country code, and a short description.
    </p>

    <h2>Field Descriptions</h2>

    <table>
        <tr>
            <th>Field</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>Country Name</td>
            <td>The name of the country.</td>
        </tr>
        <tr>
            <td>Capital</td>
            <td>The capital city of the country.</td>
        </tr>
        <tr>
            <td>Continent</td>
            <td>The continent where the country is located.</td>
        </tr>
        <tr>
            <td>Currency</td>
            <td>The currency used in the country.</td>
        </tr>
        <tr>
            <td>Country Code</td>
            <td>The two-letter country code.</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>A short description of the country.</td>
        </tr>
    </table>

    <h2>Country Records</h2>

    <table>
        <tr>
            <th>Country</th>
            <th>Capital</th>
            <th>Continent</th>
            <th>Currency</th>
            <th>Country Code</th>
            <th>Description</th>
        </tr>

        <%
            // Read each CountryBean object and display its information
            for (CountryBean country : countries) {
        %>

        <tr>
            <td><%= country.getCountryName() %></td>
            <td><%= country.getCapital() %></td>
            <td><%= country.getContinent() %></td>
            <td><%= country.getCurrency() %></td>
            <td><%= country.getCountryCode() %></td>
            <td><%= country.getDescription() %></td>
        </tr>

        <%
            }
        %>

    </table>

</div>

</body>
</html>