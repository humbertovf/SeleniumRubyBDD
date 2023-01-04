require 'watir'
require 'selenium-webdriver'
require 'test-unit'

class TC_001 < Test::Unit::TestCase

  def setup
    @browser = Watir::Browser.new :chrome
    @browser.window.maximize
    @browser.goto "https://demo.guru99.com/test/newtours/index.php"
  end

  def teardown
    @browser.quit
  end

  def testCase1
    usernameTxt = @browser.text_field(name: "userName")
    passwordTxt = @browser.text_field(name: "password")
    submitBtn = @browser.button(name: "submit")

    usernameTxt.send_keys 'selenium'
    passwordTxt.send_keys 'selenium'
    submitBtn.click

    loginSuccessfullyMsg = @browser.element(css: "tbody tr td h3")

    actualLoginMsg = loginSuccessfullyMsg.text
    expectedLoginMsg = "Login Successfully"

    # working with links
    flightsLeftMenuOption = @browser.link(text: "Flights")
    flightsLeftMenuOption.click

    # working with dropdown
    passengersAmount = @browser.select_list(name: "passCount")
    passengersAmount.select "2"

    #Dos formas de validar el mensaje del Login
    assert_true(actualLoginMsg.include?(expectedLoginMsg), "[Error] - Actual - (#{actualLoginMsg}) is not matching with Expected - (#{expectedLoginMsg})")
    #assert_true(actualLoginMsg == expectedLoginMsg, "[Error] - Actual - (#{actualLoginMsg}) is not matching with Expected - (#{expectedLoginMsg})")
  end
end