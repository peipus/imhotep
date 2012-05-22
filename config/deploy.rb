set :application, "imhotep"
set :user, "imhotepe"
set :domain, "imhotepe@imhotep.ee"
set :sudo_cmd, "sudo"
set :ssh_cmd, "ssh"
set :ssh_flags, ['-p 22122']

set :deploy_to, "/home/imhotepe/rails_apps/imhotep"
set :repository, 'git@github.com:peipus/imhotep.git'
set :svn_cmd, "git"
set :deploy_via, "copy"












