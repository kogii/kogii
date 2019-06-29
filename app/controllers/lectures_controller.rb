class LecturesController < ApplicationController
    def index
        @user_id = user.id # ユーザidを取得
        @lectures = UserTimetable.where(user_id:, user_id) #idをもとにデータベースから講義情報を持ってくる
    end
end
