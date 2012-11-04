source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
# BDD and TDD 
group :test do
  gem "rspec-rails"
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'simplecov'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development, :test do
  gem 'sqlite3'
  gem 'debugger'
  #gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
end

group :production do
# gem 'pg'
end

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger

# To use haml instead of erb
gem 'haml'

