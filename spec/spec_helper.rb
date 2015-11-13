require 'serverspec'
require 'net/ssh'

set :backend, :docker
set :docker_url, ENV['DOCKER_HOST']
set :docker_container, ENV['TARGET_CONTAINER_ID']
