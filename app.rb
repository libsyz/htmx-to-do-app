
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
      binding.pry
      @tasks.all << Task.new(params['task'])
      erb :tasklist
    else
      erb :validation_error
    end
  end

  post '/tasks/:id' do
    binding.pry
  end

  delete '/tasks/:id' do
    @repository.delete_at(params[:id].to_i)
    erb :tasklist
  end




