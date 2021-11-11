require_relative 'setup_test_database'

# Set the environment to "test"
ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

# Bring in the contents of the `app.rb` file. The below is equivalent to: require_relative '../app.rb'
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# Tell Capybara to talk to the app
Capybara.app = MakersBnb

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
    add_row_to_test_database
  end
end
