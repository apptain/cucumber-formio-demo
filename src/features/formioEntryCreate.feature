Feature: Create Example Entry 
    As a Developer in Test
    I want to test if the github.com failed login screen displays an error

    Scenario: login with fake credentials
        Given I open the url "https//localhost:8080"
        When  I clear the inputfield '[placeholder="Enter your first name"]'
        And   I add "Arnold" to the input field '[placeholder="Enter your first name"]'
        And   I clear the inputfield '[placeholder="Enter your last name"]'
        And   I add "Pig" to the input field '[placeholder="Enter your last name"]'
        And   I clear the inputfield '[placeholder="Enter your email address"]'
        And   I add "arnoldthepig@gmail.com" to the input field '[placeholder="Enter your email address"]'
        And   I clear the inputfield '[placeholder="Enter your phone number"]'
        And   I add "arnoldthepig@gmail.com" to the input field '[placeholder="Enter your email address"]'      
        And   I click on the button "[value='Sign in']"
        Then  I expect that element "#js-flash-container .flash-error" is displayed