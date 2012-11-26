class WorkoutsController < ApplicationController
 def index
    @workouts = Workout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workouts }
    end
  end
end
