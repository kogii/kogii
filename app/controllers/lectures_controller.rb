class LecturesController < ApplicationController
    def show
        @lecture = Timetable.find_by(:id => params[:id]) #idをもとにデータベースから講義情報を持ってくる    end
    end
end
