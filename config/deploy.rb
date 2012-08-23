set :application, "soi"
set :repository,  "git@github.com:uniba/the-sound-of-the-internet.git"

set :user, 'nulltask'

set :scm, :git
set :branch, "master"
set :scm_verbose, true
set :git_shallow_clone, 1

set :deploy_to, "~/app/#{application}"
set :deploy_via, :remote_cache

set :node_env, 'production'
set :node_port, 3000

set :default_environment, {
  'PATH' => "/usr/local/bin:$PATH"
}

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

role :web, "house.local"
role :app, "house.local"
role :db,  "house.local"

namespace :deploy do
  task :start, :roles => :app do
    try_sudo "forever start #{current_path}/server/app.js"
    try_sudo "forever -c ruby start #{current_path}/server/dns.rb"
  end
  task :stop, :roles => :app do
    try_sudo "forever stop #{current_path}/server/app.js"
    try_sudo "forever stop #{current_path}/server/dns.rb"
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    try_sudo "forever restart #{current_path}/server/app.js"
    try_sudo "forever restart #{current_path}/server/dns.rb"
  end
end

after "deploy:create_symlink", :roles => :app do
  run "ln -sfv #{shared_path}/auth.json #{current_path}/config"
  run "ln -svf #{shared_path}/node_modules #{current_path}/node_modules"
  run "cd #{current_path}/server && npm install"
end

after "deploy:setup", :roles => :app do
  run "mkdir -p #{shared_path}/node_modules"
end

