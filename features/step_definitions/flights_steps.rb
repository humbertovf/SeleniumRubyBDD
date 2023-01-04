When(/^a flight is scheduled using the same record (.*)$/) do |record|
  @flights = FlightsPage.new(@browser)

  @flights.clickOnFlightsLink
  @flights.clickOnTripType(record)
  @flights.selectPassengersAmount(record)
  @flights.selectFromPort(record)
  @flights.selectFromMonth(record)
  @flights.selectFromDay(record)
  @flights.selectToPort(record)
  @flights.selectToMonth(record)
  @flights.selectToDay(record)
  @flights.clickOnServiceClass(record)
  @flights.selectAirline(record)
  @flights.clickOnContinueBtn
end

Then(/^user should get a message$/) do |expectedMessage|
  # sleep(3)
  actualMsg = @flights.getURL
  puts actualMsg
  assert_equal(expectedMessage, actualMsg, "[Error] - !!!!!!!!!!!!!")
end

