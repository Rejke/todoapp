class TodoController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(isCompleted: @todo.isCompleted ? false : true)
    redirect_back(fallback_location: root_path)
  end

  def create
    @todo = Todo.new(todo_params)
    Project.all.each do |project|
      if project.id == @todo.project_id then
        project.todos << @todo
      end
    end
    redirect_back(fallback_location: root_path)
  end

  private def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end
