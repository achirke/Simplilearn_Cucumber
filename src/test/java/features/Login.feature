Feature: Login Feature

  Background: Open the Login Page
    Given User has navigated to the login page

  @Regression
  Scenario: Positive Login Scenario
    When User enteres Correct Username and password
    And User clicks on the Login Button
    Then user should be navigated to the Home Page

  Scenario: Positive Login Scenario with Parameters
    When User enteres correct username "abc@xyz.com" and password "Abc@12345"
    And User clicks on the Login Button
    Then user should be navigated to the Home Page

  Scenario Outline: Positive Login Scenario with with multiple users
    When User enteres correct username "<Username>" and password "<Password>"
    And User clicks on the Login Button
    Then user should be navigated to the Home Page

    Examples: 
      | Username    | Password |
      | abc@xyz.com | Abc@1234 |
      | pqr@abc.com | Abc@1234 |

  Scenario Outline: Negative Login Scenario with with multiple users
    When User enteres correct username "<Username>" and password "<Password>"
    And User clicks on the Login Button
    Then user should be getting the error message "<Error>"

    Examples: 
      | Username    | Password | Error                                              |
      | abc@xyz.com | Abc@1234 | The email or password you have entered is invalid. |
      | pqr@abc.com | Abc@1234 | The email or password you have entered is invalid. |

  @DataTable
  Scenario: datatable
    When user enter correct credentials
      | Field          | Value         |
      | Asc@gmail.com  | Adsfg1@Reahj  |
      | reha@gmail.com | Ahsdj12@Reahj |
    And user clicks on Login Button
    Then user should be exit
