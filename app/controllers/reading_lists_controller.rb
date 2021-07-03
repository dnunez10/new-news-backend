class ReadingListsController < ApplicationController
    def index
        reading_lists = ReadingList.all
        render json: reading_lists
    end

    def show 
        reading_list = ReadingList.find(params[:id])
    end
end
