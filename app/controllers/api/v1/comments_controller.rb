class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new(user_id: current_user.id, article_id: params[:article_id])
        if comment.save
            render json: {user: UserSerializer.new(current_user)} 
        else
            render json: comment.errors
        end
    end
end
