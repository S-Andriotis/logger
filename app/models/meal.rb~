class Meal < ActiveRecord::Base
  validates :title, :meal_details, presence: true
  validates :month,  numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 12 }
  validates :day,  numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31 }
  validates :year,  numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
