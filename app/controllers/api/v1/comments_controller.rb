class Api::V1::CommentsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new(user_id: current_user.id, comment: params[:name], article_id: params[:article_id])
        if comment.save
            render json: {user: UserSerializer.new(current_user)} 
        else
            render json: comment.errors
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    def update
        comment = Comment.find(params[:id])
        if comment.update(params.permit(:comment))
            render json: comment 
        else
            render json: {message: "could not update"}
        end
    end
end
