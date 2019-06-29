class TimetablesController < ApplicationController
  def index
    @timetables = Timetable.all
    @mondays = Timetable.where(day: 'Monday')
    @tuesdays = Timetable.where(day: 'Tuesday')
    @wednesdays = Timetable.where(day: 'Wednesday')
    @thursdays = Timetable.where(day: 'Thursday')
    @fridays = Timetable.where(day: 'Friday')

    @user = User.find(params[:id])
    @current_user = User.find_by(id: session[:user_id])
  end


end
