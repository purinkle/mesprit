ENV['RAILS_ENV'] = 'test'
require './config/environment'
require 'rspec'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

Spinach.hooks.after_scenario do
  DatabaseCleaner.clean
end