# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :test, :development do
  gem 'byebug'
end

group :test do
  gem 'rspec'
end

gem "letter_opener"
gem "sidekiq", "~> 5.2"
gem 'activerecord'
gem 'standalone_migrations'
gem 'pg'
gem 'actionmailer', require: "action_mailer"
gem 'rack'
gem "thin"
gem 'tilt'
gem 'hanami-router'
