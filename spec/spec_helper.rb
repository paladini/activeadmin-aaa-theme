ENV["RAILS_ENV"] ||= "test"

# Load the dummy Rails application config
require_relative "dummy/config/environment"
require "rspec/rails"
require "capybara/rails"

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.use_transactional_fixtures = true
end
