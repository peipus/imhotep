require 'capistrano-deploy'
use_recipes :git, :bundle, :rails

require "mongrel_cluster/recipes"


set :application, "imhotep"
set :repository,  "git@github.com:peipus/imhotep.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/imhotepe/rails_app/imhotep"
set :user, "imhotepe"

set :scm_username, "peipus"

set :use_sudo, false

set :via, "scp"

set :branch, "master"

server "80.79.120.193", :app, :web, :db, :primary => true

after 'deploy:update', 'bundle:install'

# role :web, "Apache"                          # Your HTTP server, Apache/etc
# role :app, "Mongrel"                          # This may be the same as your `Web` server
# role :db,  "MySQL", :primary => true # This is where Rails migrations will run
# role :db,  "MySQL"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end