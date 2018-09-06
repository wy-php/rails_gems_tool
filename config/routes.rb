# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :products
  resources :users

  # sidekiq的路由相关
  require 'sidekiq/web'
  if Rails.env.production?
    Sidekiq::Web.use Rack::Auth::Basic do |username, password|
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username.to_s), ::Digest::SHA256.hexdigest('admin')) &
        ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password.to_s), ::Digest::SHA256.hexdigest('polyhome'))
    end
  end
  mount Sidekiq::Web => '/sidekiq'
end
