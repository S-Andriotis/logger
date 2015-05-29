class WorkoutsController < ApplicationController
  def index
    @workout = Workout.all
  end  
  
  def new
    @workout = Workout.new
  end
  def edit
    @workout = Workout.find(params[:id])
  end
  def create
    @workout = Workout.new(workout_params)
    
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end
  def show
    @workout = Workout.find(params[:id])
  end
  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
 
    redirect_to workouts_path
  end
  
  def update
    @workout = Workout.find(params[:id])
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end
  
  private
  def workout_params
    params.require(:workout).permit(:title, :workout_type, :day, :month, :year, :workout_date, :duration, :intensity,  :workout_details)
  end
end
