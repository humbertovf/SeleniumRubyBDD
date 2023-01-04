# frozen_string_literal: true
require 'watir'
require 'selenium-webdriver'
module FlightsPage_module
  def linkFlights
    @browser.link(text: "Flights")
  end

  def flightTypeRadioBtns(option)
    @browser.radio(value: "#{option}")
  end

  def passengersDropDown
    @browser.select_list(name: "passCount")
  end

  def fromPortDropDown
    @browser.select_list(name: "fromPort")
  end

  def fromMonthDropDown
    @browser.select_list(name: "fromMonth")
  end

  def fromDayDropDown
    @browser.select_list(name: "fromDay")
  end

  def toPortDropDown
    @browser.select_list(name: "toPort")
  end

  def toMonthDropDown
    @browser.select_list(name: "toMonth")
  end

  def toDayDropDown
    @browser.select_list(name: "toDay")
  end

  def serviceClassRadioBtns(option)
    @browser.radio(value: "#{option}")
  end

  def airlineDropDown
    @browser.select_list(name: "airline")
  end

  def continueBtn
    @browser.element(name: "findFlights")
  end

  def flightMsg
    @browser.element(text: "After flight finder - No Seats Avaialble")
  end

end
