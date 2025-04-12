Feature: Creating reservation as guest (unregistered user)

    Background:
        Given the user is on the reservation page
        And the user is not logged in

    Scenario: Choosing date and time
        When the user clicks on a date in the calendar
        Then the application should display available time slots for that date
        And previously displayed time slots should be cleared

    Scenario: Selecting an available time slot
        Given the user has selected a date in the calendar
        When the user selects an available time slot
        Then the time slot should be highlighted

    Scenario: Past dates should not be selectable
        When the user views the reservation calendar
        Then dates prior to the current date should be disabled
        And the user should not be able to click on past dates

    Scenario: Past time should not be available
        Given the user has selected a date in the calendar
        Then time slots prior to the current time should not be displayed

    Scenario: Showing unavailable time slots
        Given the user has selected a date in the calendar
        Then time slots which have reservations should not show up

    Scenario: Navigating to next month in calendar
        When the user clicks on the next month button
        Then the calendar should display dates for the next month
        And available dates should be highlighted

    Scenario: Navigation to previous month in calendar
        When the user clicks on the previous month button
        Then the calendar should display dates for the next month unless it's in the past
        And available dates should be highlighted

    Scenario: Navigation to next year in calendar
        When the user clicks on the next month button
        And the next month is January
        Then the calendar should display dates for the new year
        And available dates should be highlighted

    Scenario: Submitting reservation with valid guest information
        Given the user has selected a date and time slot
        When the user fills in the first name "John"
        And the user fills in the last name "Doe"
        And the user fills in the email "johndoe@example.com"
        And the user fills in the phone number "777220546"
        And the user submits the reservation form
        Then a confirmation message should be displayed
        And the reservation should be stored in the system

    Scenario: Submitting reservation with invalid format
        Given the user has selected a date and time slot
        When the user fills in the first name "John"
        And the user fills in the last name "Doe"
        And the user fills in the email "invalid-email"
        And the user fills in the phone number "invalid-phone"
        And the user submits the reservation form
        Then an error message about invalid formats should be displayed
        And the reservation should not be submitted

    Scenario: Submitting reservation with missing required fields
        Given the user has selected a date and time slot
        When the user fills in the first name ""
        Or the user fills in the last name ""
        Or the user fills in the email ""
        Or the user fills in the phone number ""
        And the user submits the reservation form
        Then an error message about missing required fields should be displayed
        And the reservation should not be submitted

    