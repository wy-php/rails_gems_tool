Rails.application.routes.draw do
  root 'users#index'
  resources :products
  resources :users

  #sidekiq的路由相关
  require 'sidekiq/web'
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username.to_s), ::Digest::SHA256.hexdigest("admin")) &
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password.to_s), ::Digest::SHA256.hexdigest("polyhome"))
  end if Rails.env.production?
  mount Sidekiq::Web => '/sidekiq'


end
