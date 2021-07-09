class Api::V1::ArticleReadingsController < ApplicationController
    def index
        article_readings = ArticleReading.all
        render json: article_readings
    end

    # def my_list
    #     render json: {reading_list: ReadingListSerializer.new(current_user)}, status: :accepted
    # end

    def create
        articlereading = ArticleReading.new(reading_list_id: params[:reading_list_id], article_id: params[:article_id])
        if articlereading.save 
            render json: {reading_list: ArticleReading.new(articlereading)} 
        else
            render json: articlereading.errors
        end
    end
end
