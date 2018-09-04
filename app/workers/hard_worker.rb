class HardWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'critical'

  def perform(name, count)
    p name.to_s+count.to_s
  end
end
