source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use to easily get values from .env
gem 'dotenv', '2.2.0'

# Get fully JSONAPI complient responses!
gem 'jsonapi-resources'

# Used  devise for user authentication
gem 'devise'
# The latest version on RubyGems does not support devise > 4.0
gem 'devise_security_extension',
  git: 'https://github.com/phatworx/devise_security_extension.git',
  branch: 'master'

# Use rolify to manage roles
gem 'rolify'

# Use doorkeeper for token authentication
gem 'doorkeeper', '4.2.5'

# Cross-Origin
gem 'rack-cors', require: 'rack/cors'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.11'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'pry-rails'
  gem 'rspec-rails', '3.6'
  gem 'factory_girl_rails', '4.8'
  gem 'database_cleaner', '1.6.1'
  gem 'rspec_junit_formatter'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
