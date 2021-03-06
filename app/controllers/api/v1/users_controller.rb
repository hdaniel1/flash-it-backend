class Api::V1::UsersController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end
    
    def create 
        @user = Api::V1::User.create(user_params)
        
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: Api::V1::UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end 

    private 

    def user_params 
        params.require(:user).permit(:id, :first_name, :username, :password, :avatar)
    end
end
