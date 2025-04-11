Feature: Moderating reservations as an admin

    Background:
        Given I am logged in as an admin
        And I am viewing the calendar
    
    Scenario: Default calendar view loads correctly
        Then I should see the calendar in "Week" view by default
        And I should see all existing reservations displayed
        And each reservation should show customer name, room number and time slot
    
    Scenario: Switching to Day view
        When I click the "Day" view button
        Then the calendar should switch to daily display
        And I should see time slots for the entire day
        And reservations should be shown in their respective time slots

    Scenario: Switching to Week view
        When I click the "Week" view button
        Then the calendar should display 7 days horizontally
        And I should see the current span of 7 days
        And reservations should be shown in their correct day/time position

    Scenario: Clicking on reservation
        When I click the reservation of a user
        Then I should get a popup which contains reservation details
        And I should be able to edit or delete the reservation
        And clicking the "Close" button or clicking away from the popup should close the reservation popup
    
    Scenario: Deleting a reservation
        When I click the reservation of a user
        And click the "Delete" button
        Then a confirmation dialog should appear asking for reason of deletion
        When I fill or don't specify a reason and confirm
        Then the reservation should be removed from the system
        And the time slot should become available
    
    Scenario: Editing a reservation
        When I click the reservation of a user
        And click the "Edit" button
        Then I should get a popup with reservation and customer details
        And I should be able to edit the reservation details
        And I should be able to edit the customer details
        Then the reservation and customer details should be changed in the system
        And I should get a message confirming the change

    Scenario: Extend appointment within available time
        Given an existing appointment from "11:00 AM" to "12:00 PM"
        When I edit the appointment to end at "12:30 PM"
        And the time slot "12:00 PM" to "12:30 PM" is available
        And I click "Save"
        Then the appointment should be successfully extended
        And the calendar should update accordingly

    Scenario: Initiate new event creation
        When I click on an available time slot at "10:00 AM" on Monday
        Then a modal titled "Add new event" should appear
        And it should contain two options:
        | Appointment |
        | Unavailability |

    Scenario: Attempt to extend appointment into unavailable slot
        Given an existing appointment from "1:00 PM" to "2:00 PM"
        And there's another appointment from "2:00 PM" to "3:00 PM"
        When I try to extend the first appointment to "2:30 PM"
        Then I should see an error message letting me know that there is already a resevation and appointment cannot be extended
        And the original appointment times should remain unchanged

    Scenario: Mark time slot as unavailable
        Given I have opened the "New unavailability" modal for "Monday 10:00 AM"
        When I set:
        | Start Time | 10:00 AM |
        | End Time   | 11:30 AM |
        And I click "Save"
        Then the time slot from "10:00 AM" to "11:30 AM" should be marked as unavailable
        And the system should not allow reservations for this time slot
    
     Scenario: Attempt invalid unavailability time range
        Given I have opened the "New unavailability" modal
        When I set:
        | Start Time | 2:00 PM |
        | End Time   | 1:00 PM |
        And I click "Save"
        Then the modal should remain open
        And I should see the error message "Start date value is latter than end date."
        And no changes should be saved to the system
    
    Scenario: Modify existing unavailability
        Given there's an existing unavailability from "10:00 AM" to "12:00 PM"
        When I open the edit modal for this unavailability
        And I change the end time to "12:30 PM"
        And I click "Save"
        Then the calendar should reflect the updated unavailability until "12:30 PM"
        And all affected time slots should be revalidated

    Scenario: Create new appointment successfully
        Given I have opened the "New appointment" modal
        When I fill in the required details in valid format
        And I click "Save"
        Then the appointment should appear on the calendar

    Scenario: Attempt overlapping appointment creation
        Given there's an existing appointment from "9:00 AM" to "10:00 AM"
        When I try to create a new appointment from "9:30 AM" to "10:30 AM"
        Then I should see an error message that a reservation already exists for that time slot
        And the appointment should not be created
