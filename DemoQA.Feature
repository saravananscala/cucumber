
Feature: Verify the Functionality of DemoQA Registration page

  Background: user navigate to DemoQA Registration page
 
  Given The user is in DEMOQA Registration page
  
  
  Scenario: Verify the FirstName and LastName
  
    
    When  The user enters FirstName and LastName
    Then  The User verify the entered FirstName and LastName in textbox
    
  
  Scenario: Verify the Checkboxes
  
    When  The user click Multiple checkboxes
    Then  The User verifies the clicked checkboxes
   
 
  Scenario: Verify the  RadioButton
  
    When  The user click Single RadioButton 
    Then  The User verify the clicked RadioButton
 