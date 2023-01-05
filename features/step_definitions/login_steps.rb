

Given(/^User lands to login page$/) do
  @homepage = HomePage.new(@browser) #creando el objeto para usarlo en todo el test
  @homepage.navigate_to
end

When(/^user enters username (.*) and password (.*)$/) do |username, password|

  # @homepage.typeUserName(username)
  # @homepage.typePassword(password)

end

And(/^user clicks on login button$/) do
  @homepage.clickSubmitBtn
end

Then(/^user should get a message (.*)$/) do |login_message|

  @actualLoginMsg = @homepage.getLoginSuccessfullyMsg
  @expectedLoginMsg = login_message
  assert_true(@actualLoginMsg.include?(@expectedLoginMsg), "[Error] - Actual - (#{@actualLoginMsg}) is not matching with Expected - (#{@expectedLoginMsg})")

end

When(/^User clicks on Signout$/) do
  puts "logging out"
end

Then(/^User should get a logut message (.*)$/) do |logout_message|
  puts "log out msg"
end

When(/^login with credentials using record (.*)$/) do |record|
  @homepage.typeUserName(record)
  @homepage.typePassword(record)
end