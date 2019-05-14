class LifestagesController < ApplicationController
    def index 
        @lifestage = Lifestage.all 
        render json: @lifestage
    end 

    def show
        @lifestage = Lifstage.find(params[:id])
        render json: @lifestage
    end 

end
