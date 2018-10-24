class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = Topic.new(topic_params)
   if  @topic.save
     flash[:success] = "post sucessfully created"
    redirect_to topic_path(@topic)
   else
    render 'new'
   end
   
  end
  
  def show
    @topic = Topic.find(params[:id])
  end
  
  def edit
     @topic = Topic.find(params[:id])
  end
  
  def update
     @topic = Topic.find(params[:id])
     if @topic.update(topic_params)
       flash[:success] = "Topic was updated"
       redirect_to topic_path(@topic)
     else
       render 'edit'
     end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    flash[:danger] = "Topic deleted"
    redirect_to topics_path
  end
  
  private
  
  def topic_params
    params.require(:topic).permit(:name, :description, :picture)
  end
  
  
end