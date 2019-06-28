class LecturesController < ApplicationController
    def show
        @lecture = Timetable.find_by(:id => params[:id]) #nameをもとにデータベースから

    end
end
