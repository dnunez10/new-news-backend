class Api::V1::ArticleReadingsController < ApplicationController
    def index
        article_readings = ArticleReading.all
        render json: article_readings
    end
end
