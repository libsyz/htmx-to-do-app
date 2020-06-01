
require "sinatra"
require 'pry-byebug'

TASKS = ['laundry', 'cleaning']

get '/' do
  erb :tasks
end

post '/tasks' do
  binding.pry
  TASKS << params['task']
  erb :tasklist
end
