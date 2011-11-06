require 'bundler/capistrano'


set :application, "jottinx"

default_run_options[:pty] = true
set :scm, :git
set :repository,  "nathanvda@nathanvda.webfactional.com:webapps/dixis_git/repos/notebook.git"

role :web, "web164.webfaction.com"                          # Your HTTP server, Apache/etc
role :app, "web164.webfaction.com"                          # This may be the same as your `Web` server
role :db,  "web164.webfaction.com", :primary => true # This is where Rails migrations will run

set :user, 'nathanvda'

set :deploy_to, "/home/nathanvda/webapps/jottinx"
set :default_environment, {
  'PATH' => "#{deploy_to}/bin:$PATH",
  'GEM_HOME' => "#{deploy_to}/gems"
}

set :use_sudo, false


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

namespace :deploy do
  desc "Restart nginx"
  task :restart do
    run "#{deploy_to}/bin/restart"
  end
end