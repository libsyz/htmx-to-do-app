
require 'sinatra'
require_relative "task_repo"
require 'pry-byebug'


  use Rack::MethodOverride

  class Sinatra::Application
    def initialize
      @tasks = TaskRepo.new
      super
    end
  end

  get '/' do
    erb :tasks, layout: :index
  end

  post '/tasks' do
    unless params['task'].empty?
      @tasks.all << Task.new(params['task'])
      erb :tasklist
    else
      erb :validation_error
    end
  end

  delete '/tasks/:id' do
    @tasks.all.delete_at(params[:id].to_i)
    erb :tasklist
  end

  patch '/tasks/:id' do
    @tasks.all[params[:id].to_i].mark_as_done!
    erb :tasklist
  end




