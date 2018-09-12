class CatsController < ApplicationController 
  
  def index 
    #fail 
    cats = Cat.all 
    render json: cats 
  end   
  
  def show 
    @cat = Cat.find(params[:id])
    if Cat.find(params[:id]) 
      #render json: @cat
      render(:show) # views/cats/show.html.erb
    else 
      #redirect :index 
      
      # render({ json: @cat.errors.full_messages })
    end 
  end 
  
  def new 
    render :new
  end 
  
end 
