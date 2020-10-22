class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
  end
  
  def create
    @task = Task.new(name: params[:name], detail: params[:detail])
    if @task.save
      flash[:success] = "タスクを新規作成しました。"
      redirect_to user_tasks_url(@user)
    else
      render :new
    end
  end
end
