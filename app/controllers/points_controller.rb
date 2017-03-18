class PointsController < ApplicationController

  def index
    @points = Point.all
  end

  def new
    @point = Point.new
    render "form"
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      redirect_to root_path
    else
      render 'new'
    end  
  end

  def edit 
    @point = Point.find(params[:id])
    render "form"
  end

  def update
    @point = Point.find(params[:id])
    if @point.update_attributes(point_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

private
  def point_params
    params.require(:point).permit(:name, :longitude, :latitude)
  end 

end