
class WelcomeController < ApplicationController
  require "date"  
  def index
    current = DateTime.now
    @meal = Meal.where("#{current.day}=day AND month=#{current.month} AND year=#{current.year}")
    @workout = Workout.where("day==#{current.day} AND month==#{current.month} AND year==#{current.year}")
  end
end
