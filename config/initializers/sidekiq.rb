if Rails.env.production?
  @redis_sidekiq = REDIS_CONFIG["sidekiq"]
elsif Rails.env.development?
  @redis_sidekiq = REDIS_CONFIG["local_sidekiq"]
end

Sidekiq.configure_server do |config|
  config.redis = @redis_sidekiq
end

Sidekiq.configure_client do |config|
  config.redis = @redis_sidekiq
end