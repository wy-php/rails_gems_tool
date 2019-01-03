require 'sshkit'

SSHKit.config.command_map[:rake] = "../../bin/rake"
SSHKit::Backend::Netssh.configure do |ssh|
  ssh.connection_timeout = 30
  ssh.ssh_options = {
      user: "live",
      keys: %w(~/.ssh/id_rsa),
      forward_agent: false,
      auth_methods: %w(publickey password)
  }
end
namespace :upload do

  desc "upload link files on the first deploy"
  task :link_files do
    binding.pry
    include SSHKit::DSL
    on "60.205.151.71" do |host|
      if test("[ -f database.yml ]")
        upload! "database.yml", "#{host.hostname}/rails_gems_tool/shared/config/database.yml"
      elsif test("[ -f master.key ]")
        upload! "master.key", "#{host.hostname}/rails_gems_tool/shared/config/master.key"
      elsif test("[ -f redis.yml ]")
        upload! "redis.yml", "#{host.hostname}/rails_gems_tool/shared/config/redis.yml"
      end
    end
  end


end
