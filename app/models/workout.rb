class Workout < ActiveRecord::Base
  attr_accessible :body, :title
  
  has_many :entries
  has_many :users, :through => :entries
end
