class WorkoutsController < ApplicationController
 def index
   @workouts = Workout.all

   respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @workouts }
   end
 end

 def individual_workouts
   @entries = Entry.find_all_by_user_id(params[:user_id])

   unless @entries.empty? 
     @workout = Workout.find_by_id(@entries.first.workout_id)
   end

   respond_to do |format|
     format.html
     format.json { render json: @workouts }
   end
 end

 def leaderboard
   @entries = Entry.find_all_by_workout_id(params[:workout_id]).first(20)
   @workout = Workout.find_by_id(params[:workout_id])

   respond_to do |format|
     format.html
   end
 end
end
