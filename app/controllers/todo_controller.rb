class TodoController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(isCompleted: !@todo.isCompleted)
    redirect_back(fallback_location: root_path)
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.isCompleted = false
    @todo.save
    redirect_back(fallback_location: root_path)
  end

  private def todo_params
    params.require(:todo).permit(:text, :isCompleted, :project_id)
  end
end
