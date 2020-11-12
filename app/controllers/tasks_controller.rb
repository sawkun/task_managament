class TasksController < ApplicationController
  before_action :set_user
  
  def index
    @tasks = @user.tasks.all
  end
  
  def new
    @task = @user.tasks.build
  end
  
  def create
    @task = @user.tasks.build(task_params)
    if @task.save
      flash[:success] = "タスクを新規作成しました。"
      redirect_to user_tasks_url @user
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private
    def set_user
      @user = User.find(params[:user_id])
    end
    
    def task_params
      params.require(:task).permit(:name, :detail)
    end
    
end
