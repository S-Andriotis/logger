class Workout < ActiveRecord::Base
  validates :title, :workout_details, presence: true
  validates :month,  numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 12 }
  validates :day,  numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31 }
  validates :year,  numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :duration,  numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :intensity, format: { with: /\A(Easy|Medium|Hard|easy|medium|hard)\z/,
    message: "only accepts Easy, Medium or Hard" }
end
