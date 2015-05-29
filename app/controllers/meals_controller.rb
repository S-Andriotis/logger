


class MealsController < ApplicationController
  def index
    @meal = Meal.all
  end  
  
  def new
    @meal = Meal.new
  end
  
  def edit
    @meal = Meal.find(params[:id])
  end
  
  def create
    @meal = Meal.new(meal_params)
    
    if @meal.save
      redirect_to @meal
    else
      render 'new'
    end
  end
  
  def show
    @meal = Meal.find(params[:id])
  end
  
 
  
  
  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to @meal
    else
      render 'edit'
    end
  end
  
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
 
    redirect_to meals_path
  end
  
  private
    def meal_params
      params.require(:meal).permit(:title, :date, :day, :month, :year,  :meal_details)
    end
  end
