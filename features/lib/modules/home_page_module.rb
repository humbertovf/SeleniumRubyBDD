# frozen_string_literal: true

module HomePage_module

  HOME_URL = "https://demo.guru99.com/test/newtours/index.php"

  def userNameTxt
    @browser.text_field(name: "userName")
  end

  def passwordTxt
    @browser.text_field(name: "password")
  end

  def submitBtn
    @browser.button(name: "submit")
  end

  def loginMsg
    @browser.element(css: "tbody tr td h3")
  end

  def registerLink
    @browser.link(text: "REGISTER")
  end
end
