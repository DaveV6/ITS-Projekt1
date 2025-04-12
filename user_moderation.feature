Feature: Moderating users as an admin

    Background:
        Given I am logged in as an admin
        And I am viewing customers
    
    Scenario: Create a new customer with valid mandatory details
        When I click "Add"
        And I fill in the mandatory customer details
        And I fill in the first name as "John"
        And I click "Save"
        Then a new user with first name "John" should be created
    
    Scenario: Create a new customer with missing mandatory details
        When I click "Add"
        And I don't fill in the mandatory customer details
        And I click "Save"
        Then the system should show an error message "Fields with * are required."
        And no user will be created

    Scenario: Update an existing customer's information
        Given customer "John Doe" exists in the system
        When I select "John Doe" from the list
        And I click "Edit" on his profile
        And I change the last name to "Depp"
        And I click "Save"
        Then the user's last name is changed to "Depp"

    Scenario: Delete a customer
        Given customer "James Lebron"
        When I select "James Lebron" from the list
        And I click "Delete"
        And I confirm deletion in the modal
        Then the customer "James Lebron" will be removed from the system
        And the time slot which his apppointment occupied will be free
