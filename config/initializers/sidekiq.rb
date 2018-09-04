if Rails.env.production?
  @redis_sidekiq = REDIS_CONFIG["sidekiq"]
elsif Rails.env.development?
  @redis_sidekiq = REDIS_CONFIG["local_sidekiq"]
end

Sidekiq.configure_server do |config|
  config.redis = @redis_sidekiq
  #从sidekiq的5.1版本之后，新增的失败处理配置。
  config.death_handlers << ->(job, ex) do
    puts "Uh oh, #{job['class']} #{job["jid"]} just died with error #{ex.message}."
  end

  #配置sidekiq检查任务的时间间隔。如果不设置默认是5秒
  config.average_scheduled_poll_interval = 3
end

Sidekiq.configure_client do |config|
  config.redis = @redis_sidekiq
end