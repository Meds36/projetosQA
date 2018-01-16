require 'rspec'
require 'cucumber'
require 'page-object'
require 'data_magic'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a config do driver como padrão
Capybara.default_driver = :selenium

#Timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela de teste
Capybara.page.driver.browser.manage.window.maximize