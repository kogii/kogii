class ReviewsController < ApplicationController
    def show
        @review = Timetable.find_by(:id => params[:id]) #idをもとにデータベースから講義情報を持ってくる
        @reviews = Review.all
    end

    def new
        @review = Timetable.find_by(:id => params[:id])
    end

    def create
        @new_review = Timetable.find_by(:id => params[:id])

        @new_review = Review.new
        @new_review.kogiid = params[:review][:kogiid]
        @new_review.title = params[:review][:title]
        @new_review.content = params[:review][:content]
        @new_review.save
        redirect_to '/reviews/show/' + @new_review.kogiid.to_s
    end

    def edit
        @review = Review.find(params[:id])
    end

    def destroy
        #@review = Timetable.find_by(:id => params[:id])
        
        @review = Review.find_by(id: params[:id])
        @review.destroy
        redirect_to '/reviews/show/'+ @review.kogiid.to_s

    end
end
