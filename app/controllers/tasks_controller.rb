class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(params.require(:task).permit!)
    render(nothing: true) unless @task.save
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete
  end
end
