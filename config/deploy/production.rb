set :stage, :production
set :rails_env, :production
set :deploy_user, 'apps'
set :branch, "master"

server '13.115.193.119', user: 'apps', roles: %w{web app db}, :primary => true
