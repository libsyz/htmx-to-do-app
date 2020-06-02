
require 'sinatra'
require "sinatra/base"
require "pry-byebug"
require_relative "task_repo"



  use Rack::MethodOverride

  def initialize
    @tasks = TaskRepo.new
    super
  end


  get '/' do
    binding.pry
    erb :index
  end

  post '/tasks' do
    unless params['task'].empty?
      @repository << params['task']
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




