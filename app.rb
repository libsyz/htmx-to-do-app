require 'sinatra'
require_relative "task_repo"
require_relative "fighter_repo"
require 'pry-byebug'

use Rack::MethodOverride

class Sinatra::Application
  def initialize
    @tasks = TaskRepo.new
    @fighters = FighterRepo.new
    super
  end
end

# Ryu's to-do list

get '/' do
  erb :tasks, layout: :index
end

post '/tasks' do
  if params['task'].length.positive?
    @clear_form = true
    @tasks.all << Task.new(params['task'])
  else
    @error = "please enter a task"
  end
    erb :tasks
end

delete '/tasks/:id' do
  @tasks.all.delete_at(params[:id].to_i)
  erb :tasks
end

patch '/tasks/:id' do
  @tasks.all[params[:id].to_i].mark_as_done!
  erb :tasks
end

# Street Fighter Demo

get '/demo' do
  erb :demo
end

get '/fighters' do
  @selected = @fighters.all.find { |el| el[:name] == params['fighter']}
  erb :fighter_selected
end

get '/techniques' do
  @special = params[:technique]
  case @special
  when "hadouken", "tiger_shot"
    @special = @special.split("_").map(&:capitalize).join(" ")
    erb :'moves/hadouken'
  when "tiger_knee"
    erb :'moves/tiger_knee'
  when "shoryuken"
    erb :'moves/shoryuken'
  when "kikoken"
    erb :'moves/kikoken'
  when "renkiko"
    erb :'moves/renkiko'
  end
end





