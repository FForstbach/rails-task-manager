class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    # this has the form to get the information
    @task = Task.new
  end

  def create
    @task = Task.create(name: params[:task][:name])
    redirect_to tasks_path
  end

  def edit
    # this has the form to get the information, nothing to do with data
    @task = Task.find(params[:id])

  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @restaurant = Task.destroy(params[:id])
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end

end
