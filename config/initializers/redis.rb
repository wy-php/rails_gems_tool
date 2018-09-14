# frozen_string_literal: true

REDIS_CONFIG = YAML.load_file('config/redis.yml')
$redis = Redis.new(REDIS_CONFIG[Rails.env])
