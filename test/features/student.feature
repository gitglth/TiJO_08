Feature: Filter page
  Scenario: Search case
    When I browse to the "/"
    When I enter "app" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Chang"
    Then I should see "Chang" in "firstName" column in row "1" of "student.table" table
    When I enter "27" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "27"
    Then I should see "good.burnett@undefined.tv" in "email" column in row "2" of "student.table" table
    When I enter "knapp.hardy" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (978) 554-2635"
    Then I should see "Hardy" in "lastName" column in row "1" of "student.table" table

  Scenario: FirstName search case
    When I browse to the "/"
    When I enter "Ch" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Chang"
    Then I should see "+1 (994) 534-3669" in "phone" column in row "1" of "student.table" table
    When I enter "Gray" into "input.first" field
    Then the css element "td:nth-of-type(3)" should contain the text "21"
    Then I should see "Rose" in "lastName" column in row "1" of "student.table" table

  Scenario: Phone search case
    When I browse to the "/"
    When I enter "12" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
    Then I should see "Gordon" in "lastName" column in row "2" of "student.table" table