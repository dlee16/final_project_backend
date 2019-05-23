class LifestagesController < ApplicationController
    def index 
        @lifestage = Lifestage.all 
        
        render json: @lifestage
    end 

    def show
        @lifestage = Lifestage.find(params[:id])
        render json: @lifestage
    end 

end
