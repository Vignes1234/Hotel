@BookingConfirmation
Feature: Verify the Booking Confirmation

@BookingPage
  Scenario Outline: Verifying the AdactinHotel booking page
    Given User is on the Adactin page
    When User should login "<userName>","<password>" and click login
    And User should enter "<location>","<hotel>","<roomType>","<noOfRoom>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childPerRomm>" and click search
    And User should select one of the hotel and click continue
    And User should enter the details "<firstName>","<lastName>" and"<billingAddress>"
    And User should make payment
      | cCardNo          | cCardType        | month    | year | cvvNo |
      | 1234567890123456 | American Express | March    | 2022 |   123 |
      | 9876547890123456 | VISA             | April    | 2023 |   435 |
      | 8798987890123456 | Master Card      | November | 2024 |   877 |
      | 7687657890123456 | Rupay            | December | 2025 |   098 |
    Then User should verify the "Booking Confirmation" msg

    Examples: 
      | userName       | password | location | hotels         | roomType | noOfRooms | checkInDate | checkOutDate | adultsPerRoom | childrenPerRoom | firstName | lastName | billingAddress |
      | Vignesh4600000 |  1234567 | Sydney   | Hotel Sunshine | Double   | 1 - One   | 30/12/2021  | 31/12/2021   | 2 - Two       | 2 - Two         | Vignesh   | R        | OMR            |
   
  @VerifyingErrorMsg
  Scenario Outline: Verifying the error message on booking a hotel page
    Given User is on the Adactin page
    When User should login "<userName>","<password>" and click login
    And User should enter "<location>","<hotel>","<roomType>","<noOfRoom>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childPerRomm>" and click search
    And User should select one of the hotel and click continue
    And Book a hotel without entering deatils
    Then User should verify the " Please Enter your First Name","Please Enter you Last Name","Please Enter your Address"," Please Enter your 16 Digit Credit Card Number"," Please Select your Credit Card Type"," Please Select your Credit Card Expiry Month"and " Please Enter your Credit Card CVV Number"

    Examples: 
      | userName       | password | location | hotel          | roomType | noOfRoom | checkInDate | checkOutDate | adultsPerRoom | childPerRomm |
      | Vignesh4600000 |  1234567 | Sydney   | Hotel Sunshine | Double   | 1 - One  | 30/12/2021  | 31/12/2021   | 2 - Two       | 2 - Two      |
