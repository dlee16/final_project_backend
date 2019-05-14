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
        @comment = Comment.find_or_create_by(comment_params)
        render json: @comment 
    end 

    private
    
    def comment_params
        params.require(:comment).permit(:user_id, :group_id, :user_comment)
    end 
    

end
