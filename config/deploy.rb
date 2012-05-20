set :application, "imhotep"
set :user, "imhotepe"
set :domain, "imhotepe@imhotep.ee"
set :sudo_flags, sudo_flags << '-S'
set :run_as_sudo, [sudo_cmd, sudo_flags].flatten.compact.join(' ')

set :sudo_password, '293sLdUt8t'
set :ssh_flags, ['-p 22122']
set :deploy_to, "/home/imhotepe/rails_apps/imhotep"
set :repository, 'git@github.com:peipus/imhotep.git'










