class PawsController < ApplicationController
  
  def index
    @paws = Paw.all
  end
  def show
    @paw = Paw.find(params[:id])
  end
  
  def new
    @paw =Paw.new
    
  end
  
  def create
    @paw = Paw.new(paw_params)
    @paw.pal = Pal.find(4)
    if @paw.save
      flash[:success] = "your Paw was created succesfully!"
      redirect_to paws_path
      
    else 
      render :new
    end
  end
  
  def edit
    @paw = Paw.find(params[:id])
    
  end
  
  def update
    @paw = Paw.find(params[:id])
    if @paw.update(paw_params)
      #do something
      flash[:success] = "your pawpage was updated succesfully!"
      redirect_to paw_path(@paw)
    else
      render :edit
    end
  end
  
  private
  
    def paw_params
      params.require(:paw).permit(:name, :summary, :description)
    end  
  
end