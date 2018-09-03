REDIS_SERVERS = YAML.load_file('config/redis.yml')
$redis = Redis.new(REDIS_SERVERS[Rails.env])
