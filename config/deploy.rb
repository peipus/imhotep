require 'capistrano-deploy'
use_recipes :git, :bundle, :rails





set :repository,  "git@github.com:peipus/imhotep.git"
set :branch, "master"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`







set :deploy_via, :remote_cache
set :scm, :git
set :branch, 'master'
set :scm_verbose, true
set :use_sudo, false


set :application, "imhotep"
server "imhotep.ee:22122", :app, :web, :db, :primary => true
set :deploy_to, "/home/imhotepe/rails_app/imhotep"
set :user, "imhotepe"

namespace :deploy do
  namespace :pending do
    desc <<-DESC
      Show the commits since the last deploy
    DESC
    task :default, :except => { :no_release => true } do
      deployed_already = current_revision
      to_be_deployed = `git rev-parse --short "HEAD"`

      puts "\n\nDeployment revision #{to_be_deployed}"
      puts "I deployed the latest. It includes:"
      puts
      system(%Q{git log --no-merges --pretty=format:"* %s %b (%cn)" #{deployed_already}.. | replace '<unknown>' ''})
      puts "\n\n\n"
    end
  
  end
end

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