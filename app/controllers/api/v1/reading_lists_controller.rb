class Api::V1::ReadingListsController < ApplicationController
    # before_action :authorized, only: [:my_list]
    before_action :authorized, only: [:create]


    def index
        reading_lists = ReadingList.all
        render json: reading_lists
    end

    # def show 
    #     reading_list = ReadingList.find(params[:id])
    #     render json: reading_list
    # end

    # def my_list
    #     render json: {user: UserSerializer.new(current_user)}, status: :accepted
    # end

    def create
        reading_list = ReadingList.new(user_id: current_user.id, article_id: params[:article_id], name: params[:name])
        if reading_list.save
            render json: {reading_list: ReadingListSerializer.new(current_user)}
        else
            render json: reading_list.errors 
        end
    end
end
