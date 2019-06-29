class TimetablesController < ApplicationController
  before_action :set_current_user
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def index
    @timetables = Timetable.all
    @mondays = Timetable.where(day: 'Monday')
    @tuesdays = Timetable.where(day: 'Tuesday')
    @wednesdays = Timetable.where(day: 'Wednesday')
    @thursdays = Timetable.where(day: 'Thursday')
    @fridays = Timetable.where(day: 'Friday')
    
    @user_id = @current_user.id # ユーザidを取得
    @lectures = UserTimetable.where(user_id: @user_id) #idをもとにデータベースから講義情報を持ってくる
    @lecture_data = []
    @lectures.each{|lecture|
      @lecture_data << Timetable.find_by(id: lecture.lecture_id)
    }
  end

end
