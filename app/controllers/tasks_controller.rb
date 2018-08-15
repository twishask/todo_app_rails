class TasksController < ApplicationController

skip_before_action :verify_authenticity_token

def new

end

def index
  render :json => Task.all
end

def update
  task = Task.find(params[:id])
  task.update(params.require(:task).permit(:title, :text))
  render :json => task
end

def create
  @task = Task.new(params.require(:task).permit(:title, :text))
 
  @task.save
  
  render :json => @task
end

def show
  @task = Task.find(params[:id]) rescue {:error => 'Id does not exist'}
  
  render :json => @task
end

def destroy
  @task = Task.find(params[:id]).destroy

  render :json => @task
end


end
