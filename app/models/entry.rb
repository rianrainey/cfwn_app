class Entry < ActiveRecord::Base
  attr_accessible :id, :body, :user_id, :workout_id, :time, :rounds, :repetitions, :date_performed

  #accepts_nested_attributes_for :workout, :user
  
  belongs_to :workout
  belongs_to :user
end
