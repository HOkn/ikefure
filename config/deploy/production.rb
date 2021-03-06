# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

set :stage, "production"
set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }
set :rails_env, "production"
set :rbenv_ruby, '2.1.2'
set :repo_url, 'https://github.com/HOkn/ikefure.git'

role :app, %w{root@153.122.35.145}
role :web, %w{root@153.122.35.145}
role :db,  %w{root@153.122.35.145}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '153.122.35.145', user: 'root'


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
#set :ssh_options, {
#  forward_agent: true,
#  auth_methods: %w(publickey)
#}

set :ssh_options, {
  forward_agent: false,
  password: ENV['SERVER_PASSWORD'],
  auth_methods: %w(password)
}
