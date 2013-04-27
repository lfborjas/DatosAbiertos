Feature: Feeds
    Background:
        Given the following feeds exist:
            |name     | description                     |
            |homicides| zomg killing is pretty bad man  |
            |fires    | really dude, arson?             |
            
    
    Scenario: View the list of feeds
        When I visit the feeds list
        Then I should see the names for all the existing feeds