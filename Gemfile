source 'https://gems.ruby-china.com'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# 这里使用mysql2数据库
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'unicorn'
gem 'whenever', require: false
gem 'sidekiq'

#redis相关的。 hiredis是一个高性能的redis，redis-rails和redis-rack-cache是提供了完整的一套如(cache,session,http cache)等存储功能的包。
# redis-namespace这个是可以让redis在配置文件中设置命名空间的gem包
gem 'redis', '~> 4.0.2'
gem 'hiredis', '~> 0.6.1'
gem 'redis-rails'
gem 'redis-rack-cache'
gem 'redis-namespace'

gem 'rucaptcha'
gem 'by_star'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  #单元测试
  gem "rspec-rails"
  gem "rspec"
  gem "rspec-support"
  gem "rspec-mocks"
  gem "rspec-core"
  gem "rspec-expectations"

  #数据库清洗工具
  gem "database_cleaner"

  #开发环境中发邮件的时候不用发到真实的邮箱中了
  gem "letter_opener"

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # capistrano相关的gem
  gem 'capistrano', "~> 3.11", require: false
  gem 'capistrano-rvm', require: false
  gem "capistrano-rails", "~> 1.4", require: false
  gem 'capistrano-bundler', '~> 1.3', require: false
  gem 'capistrano3-unicorn'
  gem 'capistrano-sidekiq'

  #用于调试代码的一些工具
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-remote'

  # 友好且详尽的错误显示页面
  gem "better_errors"
  gem "binding_of_caller"

  # 格式化打印
  gem 'awesome_print'

  #性能分析工具
  gem "rubycritic", :require => false

  #代码风格指南工具
  gem "rubocop", ">= 0.49.0", require: false

  # 检测你的gem使用情况
  gem "derailed"
  gem 'derailed_benchmarks'

  #一个文档生成工具
  gem "yard", ">= 0.9.11"

  # 代码质量控制
  gem 'rails_best_practices'

  #终端显示美化工具
  gem 'lolcat'
end

group :test do
  # 模拟真实用户的行为的一个插件
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'

  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
