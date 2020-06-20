class Api::TodoController < ApplicationController
  def create
    if String(params[:text]).empty? or params[:project_id] > Project.all.length then
      render status: :bad_request
    else
      @todo = Todo.new(params)
      @todo.save
      render status: :created
    end
  end

  def update
  end
end
