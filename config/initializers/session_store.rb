if Rails.env.development?
  @redis_server = ["redis://:123456@localhost:6379/0/session"]
elsif Rails.env.production?
  # redis配置连接的写法就是密码在前面，@后面跟着的是host+端口号+数据库+命名空间
  @redis_server = ["redis://:rails_gems_tool@localhost:6379/0/session"]
end
Rails.application.config.session_store :redis_store,
                                                servers: @redis_server,
                                                expire_after: 90.minutes,
                                                key: "wang_#{Rails.application.class.parent_name.downcase}_session",
                                                threadsafe: false