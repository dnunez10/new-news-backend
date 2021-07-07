class Api::V1::ReadingListsController < ApplicationController
    def index
        reading_lists = ReadingList.all
        render json: reading_lists
    end

    def show 
        reading_list = ReadingList.find(params[:id])
    end

    def create
        reading_list = ReadingList.new(user_id: current_user.id, article_id: params[:article_id])
        if reading_list.save
            render json: {user: UserSerializer.new(current_user)}
        else
            render json: reading_list.errors 
        end
    end
end
