
require 'watir'
require 'selenium-webdriver'

=begin
# @browser.back
# @browser.forward
# @browser.refresh
=end

#puts @browser.text #trae todo el texto mostrado en la pagina

Before do |scenario|
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

After do |scenario|
  #@browser.close #cierra solo la tab seleccionada o popup msg
  @browser.quit #cierra todas las tabs o popups abiertas por el webdriver
end