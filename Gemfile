source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'bootstrap', '4.4.1'
gem 'sprockets-rails', '3.2.1'
gem 'font-awesome-rails', '4.7.0.5'
gem 'jquery-rails', '4.3.5'
gem 'popper_js', '~> 1.16.0'
gem 'rails-ujs', '0.1.0'
gem 'will_paginate-bootstrap4', '0.2.2'

gem 'mini_magick', '4.9.5'
gem 'carrierwave'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0' 
  
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'database_cleaner', '1.8.2'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '3.9.0'
  gem 'shoulda-matchers', '4.3.0'
  gem 'capybara', '3.31.0'
end

group :production do
  gem 'pg', '1.2.2'
  # gem 'fog', '1.42'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
