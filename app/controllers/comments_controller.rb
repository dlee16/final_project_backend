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
        @comment = Comment.new(
            user_id: params[:user_id],
            group_id: params[:group_id],
            user_comment: params[:user_comment]
            )
        
        if @comment.save
            ActionCable.server.broadcast("feed_channel", CommentSerializer.new(@comment))
            render json:@comment 
        else 
            render json: {error: 'Could not create that comment'}, status: 422
        end 
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
