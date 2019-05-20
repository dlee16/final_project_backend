class UserLifestagesController < ApplicationController

    def index 
        @userls = UserLifestage.all 
        render json: @userls
    end 

    def show
        @userls = UserLifestage.find(params[:id])
        render json: @userls
    end 

    def create
        @userls = UserLifestage.find_or_create_by(userls_params)
        render json: @userls
    end 

    def destroy
        @userls = UserLifestage.find(params[:id])
        @userls.destroy
    end 
    
    private
    def userls_params
        params.require(:user_lifestage).permit(:user_id, :lifestage_id)
    end 
end
