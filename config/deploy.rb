# require 'bundler/capistrano'

default_run_options[:pty] = true





set :application, "imhotep"
set :user, "imhotepe"
set :repository,  "git@github.com:peipus/imhotep.git"

set :deploy_via, :copy
set :copy_exclude, [".svn", ".git"]

# set :checkout, 'export'

set :use_sudo, false

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :port, 22122
set :password, "293sLdUt8t"

set :deploy_to, "/home/imhotepe/rails_apps/imhotep"

role :web, "imhotep.ee"                          # Your HTTP server, Apache/etc
role :app, "imhotep.ee"                          # This may be the same as your `Web` server
role :db,  "imhotep.ee", :primary => true # This is where Rails migrations will run

set :chmod755, "app config db lib public vendor script script/* public/disp*"








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
