class Workout < ActiveRecord::Base
  attr_accessible :body, :title
  
  has_many :workouts
  has_many :users, :through => :workouts
end
