/*
 * Suresh Shrestha
 * Module - 4 JavaBean Assignment
 * 9/5/2026
 * Description: This JavaBean stores information about a country.
 * The data will be retrieved and displayed on a JSP page.
 */

package com.csd430.beans;

public class CountryBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    // Fields used to store country information
    private String countryName;
    private String capital;
    private String continent;
    private String currency;
    private String countryCode;
    private String description;

    // No-argument constructor
    public CountryBean() {
    }

    // Constructor used to create a country record
    public CountryBean(String countryName, String capital,
                       String continent, String currency,
                       String countryCode, String description) {

        this.countryName = countryName;
        this.capital = capital;
        this.continent = continent;
        this.currency = currency;
        this.countryCode = countryCode;
        this.description = description;
    }

    // Getter and setter for country name
    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    // Getter and setter for capital
    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }

    // Getter and setter for continent
    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }

    // Getter and setter for currency
    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    // Getter and setter for country code
    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    // Getter and setter for description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}