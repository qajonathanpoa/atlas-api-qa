require 'allure-cucumber'
require 'kafka'
require 'rspec'
require 'httparty'
require_relative 'helpers'

World(HELPERS)

AllureCucumber.configure do |config|
  config.results_directory = '/reports'
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
  config.link_tms_pattern = 'http://www.hiptest.com/browse/{}'
  config.link_issue_pattern = 'http://www.jira.com/browse/{}'
end
