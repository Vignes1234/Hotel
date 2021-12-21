@SearchHotel
Feature: Verify Adactin Search Hotel

@VerifyingAdactinSearchHotel
  Scenario Outline: Verifying adactin search hotel page
    Given User is on the Adactin page
    When User should login"<userName>","<password>" and click login
    And User should enter "<location>","<hotels>","<roomType>","<noOfRooms>","<checkInDate>","<checkOutDate>""<adultsPerRoom>","<childrenPerRoom>"and click search
    Then User should verify "Select Hotel" is present or not

    Examples: 
      | userName       | password | location | hotels         | roomType | noOfRooms | checkInDate | checkOutDate | adultsPerRoom | childrenPerRoom |
      | Vignesh4600000 |  1234567 | Sydney   | Hotel Sunshine | Double   | 1 - One   | 30/12/2021  | 31/12/2021   | 2 - Two       | 2 - Two         |
 
@MandatoryFields
  Scenario Outline: Verifying adactin search hotel page with only mandatory fields
    Given User is on the Adactin page
    When User should login"<userName>","<password>" and click login
    And User should enter "<location>","<noOfRooms>","<checkInDate>","<checkOutDate>""<adultsPerRoom>"and click search
    Then User should verify "Select Hotel" is present or not

    Examples: 
      | userName       | password | location | noOfRooms | checkInDate | checkOutDate | adultsPerRoom |
      | Vignesh4600000 |  1234567 | Sydney   | 1 - One   | 30/12/2021  | 31/12/2021   | 2 - Two       |
@InccorectDate
  Scenario Outline: Verifying adactin search hotel page with incorrect dates
    Given User is on the Adactin page
    When User should login"<userName>","<password>" and click login
    And User should enter uneven date is "<checkInDate>","<checkOutDate>" and click  search
    Then User should verify the error msg "Check-In Date shall be before than Check-Out Date" , "check-Out Date shall be after than Check-In Date"

    Examples: 
      | userName       | password | checkInDate | checkOutDate |
      | Vignesh4600000 |  1234567 | 30/12/2022  | 31/12/2021   |
@WithoutEnteringData
  Scenario Outline: Verifying adactin search hotel page without entering data
    Given User is on the Adactin page
    When User should login"<userName>","<password>" and click login
    And User should entering without any data and click search
    Then User should verify the error msg "Please Select a Location"

    Examples: 
      | userName       | password |
      | Vignesh4600000 |  1234567 |
