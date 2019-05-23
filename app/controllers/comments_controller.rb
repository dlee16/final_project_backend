class CommentsController < ApplicationController

    def index 
        @comments = Comment.all 
        render json: @comments
    end 

    def show
        @comment = Comment.find(params[:id])
        render json:@comment
    end 

    def create
        @comment = Comment.create(comment_params)
        render json: @comment 
    end 

    def update 
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: Comment.all
    end 

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: Comment.all
    end 

    private
    
    def comment_params
        params.require(:comment).permit(:user_id, :group_id, :user_comment)
    end 
    

end
