class ReviewsController < ApplicationController
<<<<<<< HEAD
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
        
        #lectureのidではなくreviewのidをとってきてしまう。
        @review = Review.find_by(params[:id])
        @review.destroy
        redirect_to '/reviews/show/'+ @review[:id].to_s

    end
end
=======
  def index
    @reviews = review.all
  end

  def show
  end

  def new
  end

  def create
    @review = Review.new
    @review.title = params[:review][:title]
    @review.content = params[:review][:content]
    @review.save
    redirect_to '/reviews/index'
  end
end
>>>>>>> 662c8d396c54a44fdfd14e91ff58b272e729c70a
