# frozen_string_literal: true
require 'watir'
require 'selenium-webdriver'

class HomePage
  #los locators estan definidos en este module
  include HomePage_module

  def initialize(driver)
   @browser = driver
   @data_record = Data.new #creando un objeto de Data para poder leer los archivos .yaml
  end

  def navigate_to
    @browser.goto HOME_URL
  end

  def typeUserName(record)
    userNameTxt.send_keys @data_record.readRecordFile["#{record}"]['username']
  end

  def typePassword(record)
    # @passwordTxt = @browser.text_field(name: "password")
    passwordTxt.send_keys @data_record.readRecordFile["#{record}"]['password']
  end

  def clickSubmitBtn
    # @submitBtn = @browser.button(name: "submit")
    submitBtn.click
  end

  def getLoginSuccessfullyMsg
    # @loginSuccessfullyMsg = @browser.element(css: "tbody tr td h3")
    return loginMsg.text
  end

end
