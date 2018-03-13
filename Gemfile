source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Full-stack web application framework. (http://rubyonrails.org)
gem 'rails', '~> 5.1.4'
# Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/] (https://bitbucket.org/ged/ruby-pg)
gem 'pg', '~> 0.18'
# Flexible authentication solution for Rails with Warden (https://github.com/plataformatec/devise)
gem 'devise', '~> 4.2'
# Puma is a simple, fast, threaded, and highly concurrent HTTP 1.1 server for Ruby/Rack applications (http://puma.io)
gem 'puma', '~> 3.7'
# Sass adapter for the Rails asset pipeline. (https://github.com/rails/sass-rails)
gem 'sass-rails', '~> 5.0'
# Ruby wrapper for UglifyJS JavaScript compressor (http://github.com/lautis/uglifier)
gem 'uglifier', '>= 1.3.0'
# Embed the V8 JavaScript interpreter into Ruby (http://github.com/cowboyd/therubyracer)
gem 'therubyracer', platforms: :ruby
# CoffeeScript adapter for the Rails asset pipeline. (https://github.com/rails/coffee-rails)
gem 'coffee-rails', '~> 4.2'
# Bootstrap CSS toolkit for Rails 4, 3.x Asset Pipeline (https://github.com/seyhunak/twitter-bootstrap-rails)
gem 'twitter-bootstrap-rails'
# rdoc html with javascript search index. (https://github.com/zzak/sdoc)
gem 'sdoc', '~> 0.4.0', group: :doc
# An elegant, structured (X)HTML/XML templating engine. (http://haml.info/)
gem 'haml'
# Devise Bootstrap views with i18n support.
gem 'devise-bootstrap-views'
# A date picker for Twitter Bootstrap (https://github.com/Nerian/bootstrap-datepicker-rails)
gem 'bootstrap-datepicker-rails'
# Easy multi-tenanting for Rails + Devise (https://github.com/jekuno/milia)
gem 'milia', github: 'jekuno/milia', branch: 'issue#76'
# AWS SDK for Ruby (http://github.com/aws/aws-sdk-ruby)
gem 'aws-sdk'
# Ruby bindings for the Stripe API (https://stripe.com/docs/api/ruby)
gem 'stripe'
# Create JSON structures via a Builder-style DSL (https://github.com/rails/jbuilder)
gem 'jbuilder', '~> 2.5'
# Use jQuery with Rails 4+ (https://github.com/rails/jquery-rails)
gem 'jquery-rails'
# an asset gemification of the font-awesome icon font library (https://github.com/bokmann/font-awesome-rails)
gem 'font-awesome-rails'
# Log parser to identify actions which significantly increase VM heap size (http://github.com/noahd1/oink)
gem 'oink'
# Simple Rails app configuration (https://github.com/laserlemon/figaro)
gem 'figaro'
# Entity-relationship diagram for your Rails models. (https://github.com/voormedia/rails-erd)
gem 'rails-erd'
group :development, :test do
  # Ruby fast debugger - base + CLI (http://github.com/deivid-rodriguez/byebug)
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Capybara aims to simplify the process of integration testing Rack applications, such as Rails, Sinatra or Merb (https://github.com/teamcapybara/capybara)
  gem 'capybara', '~> 2.13'
  # The next generation developer focused tool for automated testing of webapps (https://github.com/seleniumhq/selenium)
  gem 'selenium-webdriver'
end

group :development do
  # Automatic Ruby code style checking tool. (https://github.com/bbatsov/rubocop)
  gem 'rubocop'
  # Annotates Rails Models, routes, fixtures, and others based on the database schema. (http://github.com/ctran/annotate_models)
  gem 'annotate'
  # help to kill N+1 queries and unused eager loading. (https://github.com/flyerhzm/bullet)
  gem 'bullet'
  # Listen to file modifications (https://github.com/guard/listen)
  gem 'listen', '>= 3.0.5', '< 3.2'
  # A debugging tool for your Ruby on Rails applications. (https://github.com/rails/web-console)
  gem 'web-console', '>= 3.3.0'
  # Rails application preloader (https://github.com/rails/spring)
  gem 'spring'
  # Makes spring watch files using the listen gem. (https://github.com/jonleighton/spring-watcher-listen)
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Security vulnerability scanner for Ruby on Rails. (http://brakemanscanner.org)
  gem 'brakeman', :require => false

end

group :production do

end
# Timezone Data for TZInfo (http://tzinfo.github.io)
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# An Action Dispatch session store backed by an Active Record class. (https://github.com/rails/activerecord-session_store)
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'