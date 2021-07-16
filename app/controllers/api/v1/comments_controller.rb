class Api::V1::CommentsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.new(user_id: current_user.id, comment: params[:comment], article_id: params[:article_id])
        if comment.save
            render json: {comment: CommentSerializer.new(comment)} 
        else
            render json: comment.errors
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {message: "success"}
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
