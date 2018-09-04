class HardWorker
  include Sidekiq::Worker
  sidekiq_options :queue => :critical, :retry => 3, :dead => false

  sidekiq_retries_exhausted do |msg, ex|
    Sidekiq.logger.warn "Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}"
  end

  sidekiq_retry_in do |count|
    10 * (count + 1) # (i.e. 10, 20, 30, 40, 50)
  end

  def perform(name, count)
    p name.to_s+count.to_s
    logger.info "Here's some info: #{hash.inspect}"
  end
end