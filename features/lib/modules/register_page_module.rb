# frozen_string_literal: true

module RegisterPage_module

  def firstNameTxt
    @browse.text_field(name: "firstName")
  end

  def lastNameTxt
    @browse.text_field(name: "lastName")
  end

  def phoneTxt
    @browse.text_field(name: "phone")
  end

  def emailTxt
    @browse.text_field(id: "userName")
  end

  def addressTxt
    @browse.text_field(name: "address1")
  end

  def cityTxt
    @browse.text_field(name: "city")
  end

  def stateTxt
    @browse.text_field(name: "state")
  end

  def postalCodeTxt
    @browse.text_field(name: "postalCode")
  end

  def countryDropDown
    @browse.select_list(name: "country")
  end

  def userNameTxt
    @browse.text_field(id: "email")
  end

  def passwordTxt
    @browse.text_field(name: "password")
  end

  def confirmPasswordTxt
    @browse.text_field(name: "confirmPassword")
  end

  def submitBtn
    @browse.button(name: "submit")
  end

  def registrationMsg
    @browse.element(xpath: "//b[contains(text(),'Dear')]")
  end
end
