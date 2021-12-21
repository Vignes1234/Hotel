@CancelBooking
Feature: Verify the cancel booking

@CancelOrderID
  Scenario Outline: Verifying the cancellation of order ID
    Given User is on the Adactin page
    When User should enter "<userName>","<password>" and click login
    And User should enter "<location>","<hotel>","<roomType>","<noOfRoom>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childPerRomm>" and click search
    And User should select one of the hotel and click continue
    And User should enter the details "<firstName>","<lastName>","<billingAddress>"
    And User should make payment
      | cCardNo          | cCardType        | month    | year | cvvNo |
      | 1234567890123456 | American Express | March    | 2022 |   123 |
      | 9876547890123456 | VISA             | April    | 2023 |   435 |
      | 8798987890123456 | Master Card      | November | 2024 |   877 |
      | 7687657890123456 | Rupay            | December | 2025 |   098 |
    And User should click the booked itinerary page from booking confirmation page and cancel the same order ID
    Then User should verify the "The booking has been cancelled." msg

    Examples: 
      | userName       | password | location | hotels         | roomType | noOfRooms | checkInDate | checkOutDate | adultsPerRoom | childrenPerRoom | firstName | lastName | billingAddress | 
      | Vignesh4600000 |  1234567 | Sydney   | Hotel Sunshine | Double   | 1 - One   | 30/12/2021  | 31/12/2021   | 2 - Two       | 2 - Two         | Vignesh   | R        | OMR            | 

@CancelExistingOrderId
  Scenario Outline: Verifying the existing order ID cancellation
    Given User is on the Adactin page
    When User should enter "<userName>","<password>" and click login
    And User should click the booked itinerary page and cancel the existing order ID
    Then User should verify the "The booking has been cancelled." msg

    Examples: 
      | userName       | password |
      | Vignesh4600000 |  1234567 |
