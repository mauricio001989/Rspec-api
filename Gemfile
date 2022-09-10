source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'
gem 'rails', '~> 6.1.4', '>= 6.1.4.6'

# pg: A postgreSQL client library for Ruby.
# @see: { https://github.com/ged/ruby-pg }
gem 'pg', '~> 1.1'

# puma: A ruby/Rack web server built for parallelism.
# @see: { https://github.com/puma/puma }
gem 'puma', '~> 5.0'

# bootsnap: A boot large ruby/rails apps faster.
# @see: {https://github.com/Shopify/bootsnap}
gem 'bootsnap', '>= 1.1.0', require: false

# tzinfo-data: A public domain IANA Time Zone Database.
# @see: { https://github.com/tzinfo/tzinfo-data }
gem 'tzinfo-data'

# versionist: A plugin for versioning Rails based RESTful APIs. Versionist.
# see: { https://github.com/bploetz/versionist }
gem 'versionist', '~> 2.0', '>= 2.0.1'

group :development, :test do
  # byebug: A simple to use and feature rich debugger for Ruby.
  # @see: { https://github.com/deivid-rodriguez/byebug }
  gem 'byebug', platforms: :mri

  #rspec-rails: A drop-in alternative to its default testing framework, Minitest.
  #@see: { https://github.com/rspec/rspec-rails }
  gem 'rspec-rails', '~> 5.1.0'

  # factory_bot_rails: A support for multiple build strategies (instances  saved and unsaved ).
  # @see: { https://github.com/thoughtbot/factory_bot_rails }
  gem 'factory_bot_rails', '~> 6.2.0'

  # faker: This gem is a port of Perl's Data::Faker library that generates fake data.
  # @see: { https://github.com/faker-ruby/faker }
  gem 'faker', '~> 2.19.0'
end

group :test do
  # database_cleaner: A set of gems containing strategies for cleaning your database in Ruby.
  # @see: { https://github.com/DatabaseCleaner/database_cleaner }
  gem 'database_cleaner', '2.0.1'

  # shoulda-matchers: A minitest-compatible one-liners to test common Rails functionality.
  # @see: { https://github.com/thoughtbot/shoulda-matchers }
  gem 'shoulda-matchers', '~> 5.0'

  # simplecov: A code coverage analysis tool for Ruby.
  # @see: { https://github.com/simplecov-ruby/simplecov }
  gem 'simplecov'

  # fuubar: A instafailing RSpec formatter that uses a progress bar dots as feedback.
  # @see: { https://github.com/thekompanee/fuubar }
  gem 'fuubar'
end

group :development do
  # listen: The gem listens to file modifications and notifies you about the changes.
  # @see: { https://github.com/guard/listen }
  gem 'listen', '~> 3.3'

  # spring: a Rails application preloader.
  # @see: { https://github.com/rails/spring }
  gem 'spring'
end
