source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'active_link_to'
gem 'activeadmin'
gem 'activeadmin_reorderable'
gem 'mini_magick'
gem 'devise'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'pg', '>= 0.18', '< 2.0'
# gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'slim-rails', '~> 3.1', '>= 3.1.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'passenger'
gem 'meta-tags'
gem 'httparty'
gem 'facebookbusiness'
gem 'cancancan'
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
# gem 'rest-client'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :production do
  # gem 'passenger'
  gem 'pg', '>= 0.18', '< 2.0'
end

group :development do
  gem 'web-console'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'passenger'
  # gem 'lazyload-rails'
  # gem 'capistrano',         require: false
  # gem 'capistrano-rvm',     require: false
  # gem 'capistrano-unicorn-nginx'
  # gem 'capistrano-unicorn'
  # gem 'capistrano-rails',   require: false
  # gem 'capistrano-bundler', require: false
  # gem 'capistrano3-puma',   require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]