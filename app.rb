

require "sinatra"
require "pry-byebug"


use Rack::MethodOverride

TASKS = ['laundry', 'cleaning']

get '/' do
  erb :tasks
end

post '/tasks' do
  unless params['task'].empty?
    TASKS << params['task']
    erb :tasklist
  else
    erb :validation_error
  end
end

post '/tasks/:id' do
  binding.pry
end


delete '/tasks/:id' do
  binding.pry
end
