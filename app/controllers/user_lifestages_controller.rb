class UserLifestagesController < ApplicationController

    def index 
        @userls = User_lifestages.all 
        render json: @userls
    end 

    def show
        @userls = User_lifestage.find(params[:id])
        render json: @userls
    end 

end
