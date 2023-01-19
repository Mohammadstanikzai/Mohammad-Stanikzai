Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'tester2@test.com' and password 'Tester@143'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @UpdateInfo
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Mohammad stanikzai' and Phone '9876543211'
    And User click on Update button
    Then user profile information should be updated

  @ChangeNewPass
  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword | confirmPassword |
      | Tester@143       | Tester!143  | Tester!143      |
    And User click on Change Password button
    Then a message should be displayed Password Updated Successfully

  @AddPayment
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard         | expirationMonth | expirationYear | securityCode |
      | 8753296941739305 | Mohammad Stanikzai |              12 |           2024 |          656 |
    And User click on Add your Card button
    Then a message should be displayed Payment Method added successfully

  @UpdateTheCard
  Scenario: Verify User can edit Debit or Credit card
    And User select the payment Card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 7648394419875397 | Stanikzai  |              12 |           2025 |          499 |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully

  @RemoveCardTest
  Scenario: Verify User can remove Debit or Credit card
    And User select the payment Card
    And User click on remove option of card section
    Then payment details should be removed

  @AddNewAddress
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName           | phoneNumber | streetAddress | apt | city    | state    | zipCode |
      | United States | Mohammad Stanikzai |  2803875638 | 123 Nowhere   |  11 | AshVill | New York |   56724 |
    And User click on Add Your Address button
    Then a message should be displayed Address Added Successfully

  @EditOldAddress
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And User fill new address form with below information
      | country       | fullName           | phoneNumber | streetAddress | apt | city        | state    | zipCode |
      | United States | Mohammad Stanikzai |  3647183926 | 32 Wood Rd    | 222 | Haltom City | New York |   38919 |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

  @RemoveOldAddress
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
