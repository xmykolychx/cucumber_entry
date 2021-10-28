Feature: Visit site and use calculator for power zones estimation

  Scenario: Visit site and calculate CP
    Given I visit site
      And I verify the site is opened
     Then I can see the CP calculator
      And I enter the body weight in pounds
      And I enter I1
     Then I select I1 duration
      And I enter I2
      And I select I2 duration
     Then I click calculate button
    Given I see the results section
     Then I see my absolute CP in watts
      And I see my CP in W/kg
     Then I verify my threshold zone