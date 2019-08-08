class Api::V1::CategoriesController < ApplicationController

    def index 
        
    end 

    def create 

    end 

    def show 

    end 

    def destroy 

    end 

    private 

    def category_params 
        params.require(:category).permit(:name, :user_id)
    end 
end
