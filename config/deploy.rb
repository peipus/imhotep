# -*- coding: utf-8 -*-
namespace :vlad do
  set :application, "imhotep"
  set :domain, "imhotepe@imhotep.ee:22122"
  set :rails_env, "production"
  set :deploy_to, "/home/imhotepe/rails_app/imhotep"
  # set :revision,  current_revision # 'master/HEAD'
  set :keep_releases, 3
  set :repository, 'git@github.com:peipus/imhotep.git'


  #set :local_link, 'danil@dapi.orionet.ru:/home/danil/code/chebit'

  # for rails
  set :shared_paths, {
    'log'    => 'log',
    'system' => 'public/system',
    'pids'   => 'tmp/pids',
    'bundle' => 'vendor/bundle',
    'config/database.yml' => 'config/database.yml',
    'config/settings' => 'config/settings',
    'config/settings.yml' => 'config/settings.yml'
  }

  # set :copy_files, {
  #   '/config/database.yml' => '/config/database.yml',
  #   '/config/settings*'    => '/config/',
  # }

  desc "Full deployment cycle"
  task "deploy" => %w[
      vlad:update
      vlad:bundle_install
      vlad:migrate
      vlad:start_app
      vlad:hoptoad
      vlad:cleanup
    ]









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

end