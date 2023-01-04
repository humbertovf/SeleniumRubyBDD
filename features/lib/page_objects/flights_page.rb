# frozen_string_literal: true

class FlightsPage
  include FlightsPage_module

  def initialize(browser)
    @browser = browser
    @data_record = Data.new
  end

  def clickOnFlightsLink
    linkFlights.click
  end

  def clickOnTripType(record)
    option = @data_record.readRecordFile("flights_record")["#{record}"]['trip_type']
    flightTypeRadioBtns(option).click
  end

  def selectPassengersAmount(record)
    passengersDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['passengers']
  end

  def selectFromPort(record)
    fromPortDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['fromPort']
  end

  def selectFromMonth(record)
    fromMonthDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['fromMonth']
  end

  def selectFromDay(record)
    fromDayDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['fromDay']
  end

  def selectToPort(record)
    toPortDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['toPort']
  end

  def selectToMonth(record)
    toMonthDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['toMonth']
  end

  def selectToDay(record)
    toDayDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['toDay']
  end

  def clickOnServiceClass(record)
    option = @data_record.readRecordFile("flights_record")["#{record}"]['service_class']
    serviceClassRadioBtns(option).click
  end

  def selectAirline(record)
    airlineDropDown.select @data_record.readRecordFile("flights_record")["#{record}"]['airline']
  end

  def clickOnContinueBtn
    continueBtn.click
  end

  def getFlightMsg
    return flightMsg.text
  end

  def getURL
    puts @browser.url
    return @browser.url
  end
end
