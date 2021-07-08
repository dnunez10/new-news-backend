class Api::V1::ArticleReadingsController < ApplicationController
    def index
        article_readings = ArticleReading.all
        render json: article_readings
    end

    def create
        articlereading = ArticleReading.new(user_id: current_user.id, article_id: params[:article_id])
        if articlereading.save 
            render json: {user: UserSerializer.new(current_user)} 
        else
            render json: articlereading.errors
        end
    end
end
