Feature: Notes
  # add note
  @addnote @validnote
  Scenario: Adding a note
    Given I click to add a note
    When Fill it in and save
    Then the note is saved

  # add note with no title or body
  @addnote @blanknote
  Scenario: Adding a blank note
    Given I click to add a note
    When Fill it in blank and save
    Then the note is saved with no title

  # add notes
  @addnote @addmultiplenotes
  Scenario: Adding three notes
    Given I add a note
    And I add a note
    And I add a note
    When I return to notes
    Then the three notes are present

  # edit note and check that the new title is saved
  @editnote
  Scenario: Editing note
    Given I add a note
    When I click on the note
    And I change the title
    And I click save
    Then the new title is displayed

  # delete note
  @deletenote
  Scenario: Delete note
    Given I add a note
    When I click on the note
    And I click delete
    Then the note is not present
    
  # cancel note
  @cancelnote
  Scenario: Cancel note creation
    Given I click to add a note
    When I change the title
    And I click delete
    Then the note will not save
