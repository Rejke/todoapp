class Api::TodoController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: Todo.all}
    end
  end

  def create
    json = JSON.parse(request.body.read)

    if json.text.empty? or json.project_id > Project.all.length then
      render status: :bad_request
    else
      @todo = Todo.new(json)
      @todo.save
      render status: :created
    end
  end

  def update
    json = JSON.parse(request.body.read)

    @todo = Todo.find(json.id)
    @todo.update(is_completed: json.is_completed)
  end
end
