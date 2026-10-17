Feature: Complete IntakeAndReuse interview

  # Reviewed against the interview and its local includes.
  # Static ALDashboard draft curated to the chosen branch; browser validation runs in CI.
  Scenario: Complete IntakeAndReuse and verify the result
    Given I start the interview at "intake.yml"
    And the maximum seconds for each Step is 300
    And the user gets to "intake complete" with this data:
      | var | value |
      | why_want_to_meet | Help reviewing a lease |
      | users[0].name.first | Jane |
      | users[0].name.last | Smith |
      | users[0].address.address | 123 Main St |
      | users[0].address.city | Boston |
      | users[0].address.state | MA |
      | users[0].address.zip | 02108 |
      | children.there_are_any | False |
    Then I should see the phrase "Thanks, we will be in touch!"
