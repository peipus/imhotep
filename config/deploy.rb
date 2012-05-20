set :application, "imhotep"
set :user, "imhotepe"
set :domain, "imhotepe@imhotep.ee"
set :sudo_cmd
set :use_sudo, false
set :sudo_password, '293sLdUt8t'
set :ssh_flags, ['-p 22122']
set :deploy_to, "/home/imhotepe/rails_apps/imhotep"
set :repository, 'git@github.com:peipus/imhotep.git'

 default_run_options[:pty] = true










