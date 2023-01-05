# frozen_string_literal: true

class RegisterPage
  include RegisterPage_module

  def initialize(browser)
    @browse = browser
    @data_record = Data.new
  end

  def typeFirstName(record)
    firstNameTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["firstName"]
  end

  def typeLastName(record)
    lastNameTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["lastName"]
  end

  def typePhone(record)
    phoneTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["phone"]
  end

  def typeEmail(record)
    emailTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["email"]
  end

  def typeAddress(record)
    addressTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["address"]
  end

  def typeCity(record)
    cityTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["city"]
  end

  def typeState(record)
    stateTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["state"]
  end

  def typePostalCode(record)
    postalCodeTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["postalCode"]
  end

  def selectCountry(record)
    countryDropDown.select @data_record.readRecordFile("register")["#{record}"]["country"]
  end

  def typeUserName(record)
    userNameTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["userName"]
  end

  def typePassword(record)
    passwordTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["password"]
  end

  def typeConfirmPassword(record)
    confirmPasswordTxt.send_keys @data_record.readRecordFile("register")["#{record}"]["password"]
  end

  def clickSubmitBtn
    submitBtn.click
  end

  def getRegistrationMsg(record)
    puts registrationMsg.text.include?@data_record.readRecordFile("register")["#{record}"]["message"]
  end
end
