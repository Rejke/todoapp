class TodoController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(is_completed: !@todo.is_completed)
    redirect_back(fallback_location: root_path)
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.is_completed = false
    @todo.save
    redirect_back(fallback_location: root_path)
  end

  private def todo_params
    params.require(:todo).permit(:text, :is_completed, :project_id)
  end
end
