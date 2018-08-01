Feature: Notes

  @addnote
  Scenario: Adding a note
    Given I click to add a note
    When Fill it in and save
    Then the note is save
