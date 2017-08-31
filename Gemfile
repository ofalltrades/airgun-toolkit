source 'https://rubygems.org'

# TODO: add explicit versioning here if it is ever needed for this project

ruby "2.4.1"

gem 'rails', '5.1.2'
gem 'mongoid', '~> 6.2.0'
gem 'bson_ext'
gem 'pg'
gem 'rake'
gem "react-rails"
gem 'sass-rails', '~> 5.0'
gem 'puma'
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'jbuilder'
gem 'bcrypt', '~> 3.1.7'
gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Maybe tryout pry-byebug at some point
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'pry-remote'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  # gem 'rails-controller-testing'
  gem 'minitest-reporters'
  # gem 'guard'
  # gem 'guard-minitest'
  # gem 'cucumber-rails', :require => false
  # # database_cleaner is not required, but highly recommended
  # gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor', '0.0.2'
end
