source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Edited by Thiago on 15/02/2016, according to the SaaS Book
# begin ------------------------

# Use Haml for templates
gem 'haml'

# Use Ruby debugger (Ruby 2.1+ does not support debugger -> use bybug, wich is already here by default).
#group :development, :test do
#  gem 'debugger'

#end

# end --------------------------

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Edited by Thiago on 16/02/2016
# begin

# On Chapter 4.3, the SaaS Book ask us to use attr_accessible on Class Movie, in
# order to access its attributes. But Since rails 4.1 it's not supported natively.
# To still use attr_accessible, we must use the gem protected_attributes,
# although, clearly, "strong parameters" is the way forwards.

gem 'protected_attributes'

# Adding gems omniauth in order to enable Thirdy-part Authentication

gem 'omniauth'
gem 'omniauth-twitter'

# end

# Adding Cucumber and Capybara to the test environment

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions
  gem 'database_cleaner' #to clear Cucumber's test database between runs
  gem 'capybara' # lets Cucumber pretend to be a web browser
  gem 'launchy' # a useful debugging aid for user stories
end

# end

# Adding RSpec and Autotest for testing

group :test do
  gem 'rspec-rails'
  #gem 'autotest-rails'
  gem 'rspec-autotest'
  gem 'ZenTest'
end

# end

# Adding themoviedb to work with TMDb

gem 'themoviedb'

# end
