class MembershipsController < ApplicationController
    def index 
        @memberships = Membership.all 
        render json: @memberships
    end 

    def show
        @membership = Membership.find(params[:id])
        render json: @membership
    end 

    def create
        @membership = Membership.find_or_create_by(membership_params)
        render json: @membership
    end 

    def destroy
        @membership = Membership.find_by(user_id:current_user[:id], group_id: params[:id])
        @membership.destroy
        render json: current_user.memberships
    end 
    
    private
    def membership_params
        params.require(:membership).permit(:user_id, :group_id)
    end 
end
