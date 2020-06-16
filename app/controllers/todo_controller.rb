class TodoController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
  end

  def create
    @todo = Todo.new(post_params)
    @todo.isCompleted = false
    Project.all[@todo.project_id - 1].todos << @todo
    redirect_back(fallback_location: root_path)
  end

  private def post_params
    params.require(:todo).permit(:text, :isCompleted, :project_id)
  end
end
