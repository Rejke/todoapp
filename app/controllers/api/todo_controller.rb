class Api::TodoController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    respond_to do |format|
      format.json { render json: Todo.all.sort_by{ |e| e[:id]}}
    end
  end

  def create
    json = JSON.parse(request.body.read)
    @todo = Todo.create(json)
  end

  def update
    json = JSON.parse(request.body.read)

    @todo = Todo.find(params[:id])
    @todo.update(json)
  end
end
