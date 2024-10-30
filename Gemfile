# frozen_string_literal: true

source 'https://rubygems.org'

gem 'hanami', '~> 2.1'
gem 'hanami-api', '~> 0.3.0'
gem 'hanami-controller', '~> 2.1'
gem 'hanami-router', '~> 2.1'
gem 'hanami-validations', '~> 2.1'
gem 'pg'
gem 'rom', '~> 5.3'
gem 'rom-sql', '~> 3.6'

gem 'dry-types', '~> 1.0', '>= 1.6.1'
gem 'jwt'
gem 'puma'
gem 'rack-cors'
gem 'rake'
gem 'uuid7'
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

group :development, :test do
  gem 'dotenv'
end

group :cli, :development do
  gem 'hanami-reloader'
end

group :cli, :development, :test do
  gem 'hanami-rspec'
end

group :development do
  gem 'bullet'
  gem 'guard-puma', '~> 0.8'
  gem 'rubocop'
  gem 'hanami-webconsole'
  gem "hanami-reloader"
end

group :test do
  gem 'database_cleaner-sequel'
  gem 'rack-test'
  gem 'capybara', require: false
  gem 'simplecov', require: false
end
