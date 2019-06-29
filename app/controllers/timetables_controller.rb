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
    
    user_id = @current_user.id # ユーザidを取得
    lectures = UserTimetable.where(user_id: user_id) #idをもとにデータベースから講義情報を持ってくる
    @lecture_data = []
    lectures.each do |lecture|
      t_lecture = Timetable.find_by(id: lecture.lecture_id) # lecture_idに該当する講義情報を取得
      t_lecture.day = convert(t_lecture.day) # 曜日を数値に変換
      @lecture_data << t_lecture
    end

    @table = []
    @table = make_table(@lecture_data) # 時間割の表を作成

  end

  def convert(day)
    if day == "Monday" then
      return "1"
    elsif day == "Tuesday" then
      return "2"
    elsif day == "Wednesday" then
      return "3"
    elsif day == "Thursday" then
      return "4"
    elsif day == "Friday" then
      return "5"
    end
  end

  def make_table(lecture_data)
    table = Array.new(5) { Array.new(5) }
    lecture_data.each do |user_lecture|
      table[user_lecture.period-1][user_lecture.day.to_i-1] = user_lecture.name
    end
    return table
  end

  def update
    user_id = @current_user.id # ユーザidを取得
    UserTimetable.create(user_id: user_id, lecture_id: params[:lecture_id])
    redirect_to("/timetables/index")
  end

end
