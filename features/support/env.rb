# frozen_string_literal: true

require "active_support/all"
require "capybara"
require "capybara/cucumber"
require "capybara/rspec"
require "selenium-webdriver"
require "site_prism"
require "pry"
require "report_builder"

##### VARIÁVEIS DE CONFIGURAÇÃO #####
AMBIENTE = ENV["AMBIENTE"]

##### ARQUIVOS CARREGADOS #####
CONFIG = YAML.load_file(Dir.pwd + "/features/support/fixtures/ambientes.yml") # Dir.pwd procura em toda raiz do projeto (Mais abrangente)
FACILIDADES = YAML.load_file(Dir.pwd + "/features/support/fixtures/facilidades.yml") # Dir.pwd procura em toda raiz do projeto (Mais abrangente)

##### CONFIG CAPYBARA #####
Capybara.configure do |config|
  config.default_driver = :selenium_chrome #:chrome # :selenium_chrome_headless ou :selenium_chrome
  config.javascript_driver = :selenium_chrome
  config.app_host = CONFIG[AMBIENTE]
  config.default_max_wait_time = 15
  Capybara.page.driver.browser.manage.window.maximize
  config.automatic_reload = true
end
