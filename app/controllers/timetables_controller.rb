class TimetablesController < ApplicationController
  def index
    @timetables = Timetable.all
    @mondays = Timetable.where(day: 'Monday')
    @tuesdays = Timetable.where(day: 'Tuesday')
    @wednesdays = Timetable.where(day: 'Wednesday')
    @thursdays = Timetable.where(day: 'Thursday')
    @fridays = Timetable.where(day: 'Friday')

    @user = User.find(params[:id])
  end


end
