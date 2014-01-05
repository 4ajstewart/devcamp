Feature: Create Talk
  As a registered user of the website
  I want to create a talk

    Scenario: I sign in and create a talk
      Given I am logged in
      When I create a talk
      Then I should see a talk created

