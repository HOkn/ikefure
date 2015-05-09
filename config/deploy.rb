# config valid only for current version of Capistrano
lock '3.4.0'

set :sidekiq_role, :web

set :application, 'ikefure'
set :branch, 'master'
set :deploy_to, '/var/www/html'
set :scm, :git
set :use_sudo, false
set :log_level, :debug
#set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets public/system public/assets}
set :keep_releases, 3
set :default_env, { path: "/usr/local/bin:$PATH" }
set :default_shell, '/bin/bash -l'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')
set :linked_files, %w{config/database.yml .env}

# Default value for linked_dirs is []
#set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/assets')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

