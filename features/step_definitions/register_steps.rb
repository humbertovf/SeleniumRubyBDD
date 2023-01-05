Given(/^a user lands on Register page$/) do
  @homePage = HomePage.new(@browser)
  @registerPage = RegisterPage.new(@browser)

  @homePage.navigate_to
  @homePage.clickRegister
end

When(/^user fill the form with data (.*)$/) do |data_set|
  @registerPage.typeFirstName(data_set)
  @registerPage.typeLastName(data_set)
  @registerPage.typePhone(data_set)
  @registerPage.typeEmail(data_set)
  @registerPage.typeAddress(data_set)
  @registerPage.typeCity(data_set)
  @registerPage.typeState(data_set)
  @registerPage.typePostalCode(data_set)
  @registerPage.selectCountry(data_set)
  @registerPage.typeUserName(data_set)
  @registerPage.typePassword(data_set)
  @registerPage.typeConfirmPassword(data_set)
  @registerPage.clickSubmitBtn
  @registerPage.getRegistrationMsg(data_set)
end

And(/^click on submit button$/) do
  #@registerPage.clickSubmitBtn
end

Then(/^should be displayed a confirmation message$/) do
  #puts @registerPage.getRegistrationMsg(data_set)
end