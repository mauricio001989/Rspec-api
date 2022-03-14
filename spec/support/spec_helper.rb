require 'factory_bot'
require 'faker'

RSpec.configure do |config|
  config.add_formatter 'Fuubar'
  config.include FactoryBot::Syntax::Methods

  Faker::Config.random = Random.new(config.seed)

  config.before(:all) do
    FactoryBot.reload
  end

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end
